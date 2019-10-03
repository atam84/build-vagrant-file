#!/usr/bin/env python3
#
# Vagrant builder
# version: 0.1 beta
# date: 10/02/2019
#

# Steps:
# 1 - Read the configuration file

import json
from pprint import pprint

disable_swap_volume = {
    "varname": "$disable_swap",
    "script": """<<-SCRIPT
    echo ''
    echo ' ***** D I S A B L E  S W A P'
    echo ''
    swapoff -a && sed -i '/swap/d' /etc/fstab
SCRIPT
"""
}

disable_enforce_mode = {
    "varname": "$disable_enforce",
    "script": """<<-SCRIPT
    echo ''
    echo '* * * * D I S A B L E  E N F O R C E  M O D E'
    echo ''
    setenforce 0
    sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
SCRIPT
"""
}


global_provision = {
    "varname": "$global_provision",
    "script": ""
}

global_packages_install = {
    "varname": "$global_install_packages",
    "script": ""
}

global_repos_add = {
    "varname": "$global_add_repos",
    "script": ""
}

global_services_enable = {
    "varname": "$global_enable_services",
    "script": ""
}

global_services_disable = {
    "varname": "$global_disable_services",
    "script": ""
}

def load_config(filename):
    try:
        json_config_file = open(filename, 'r', encoding='latin1')
        json_config = json.load(json_config_file)
        try:
            fd.close()
        except Exception:
            pass
    except IOError:
        json_config = ''
    return json_config

def add_title(title):
    return "echo ''\n    echo ' * * * * {}'\n    echo ''".format(" ".join(list(title.upper())))

def generate_hosts(json_conf):
    try:
        gen_hosts = json_conf["globals"]["hosts"]["generate_hosts"]
    except:
        gen_hosts = False
    etc_hosts = "127.0.0.1      localhost"
    if gen_hosts:
        try:
            domain = json_conf["globals"]["hosts"]["domain"]
        except:
            domain = "local"
        for index, vm in enumerate(json_conf["vms"]):
            hostname = vm["hostname"]
            for index, interface in enumerate(vm["network"]):
                etc_hosts = '{}\n{}     {}      {}.{}'.format(etc_hosts, interface["ip"], hostname, hostname, domain)
    return etc_hosts

def generate_global_provision(json_conf):
    script = "<<-SCRIPT"
    try:
        global_shell_provision = json_conf["globals"]["vagrant"]["provision"]
    except:
        global_shell_provision = False
        return False
    script = "{}\n    {}".format(script, add_title("Global Provision"))
    for command in global_shell_provision:
        script = "{}\n    {}".format(script, command)
    return "{}\nSCRIPT\n".format(script)


def generate_global_packages_install(json_conf):
    script = "<<-SCRIPT"
    try:
        global_packages = json_conf["globals"]["install_packages"]["packages"]
    except:
        global_packages = False
        return False
    script = "{}\n    {}".format(script, add_title("Global install packages"))
    if len(global_packages) == 0:
        return False
    script = "{}\n    echo '**** Install packages : {}'\n    {} {}".format(script, " ".join(global_packages), json_conf["globals"]["install_packages"]["install_command"], " ".join(global_packages))
    return "{}\nSCRIPT\n".format(script)

def generate_global_repos_add(json_conf):
    script = "<<-SCRIPT"
    try:
        global_repos = json_conf["globals"]["add_repos"]["repos"]
    except:
        global_repos = False
        return False
    script = "{}\n    {}".format(script, add_title("Global Add repos"))
    if len(global_repos) == 0:
        return False
    try:
        script = "{}\n    {}".format(script ,json_conf["globals"]["add_repos"]["cmd_before_add_package"])
    except:
        pass
    for repos in global_repos:
        script = "{}\n    {} {}".format(script, json_conf["globals"]["add_repos"]["add_repos_commad"], repos)
    return "{}\nSCRIPT\n".format(script)

def generate_global_services_enable(json_conf):
    script = "<<-SCRIPT"
    try:
        enable_services = json_conf["globals"]["services"]["to_enable"]
    except:
        enable_services = False
        return False
    script = "{}\n    {}".format(script, add_title("Global Service Enabler"))
    if len(enable_services) == 0:
        return False
    for service in enable_services:
        script = "{}\n    systemctl enable --now {}".format(script, service)
    return "{}\nSCRIPT\n".format(script)

def generate_global_services_disable(json_conf):
    script = "<<-SCRIPT"
    try:
        disable_services = json_conf["globals"]["services"]["to_disable"]
    except:
        disable_services = False
        return False
    script = "{}\n    {}".format(script, add_title("Global Service Disabler"))
    if len(disable_services) == 0:
        return False
    for service in disable_services:
        script = "{}\n    systemctl disable {}".format(script, service)
    return "{}\nSCRIPT\n".format(script)


def create_sharing_key_script(json_conf):
    pass


json_config      = load_config("config.json")
config_version   = json_config["globals"]["vagrant"]["config_version"]
vagrant_provider = json_config["globals"]["vagrant"]["provider"]["name"]


global_provision["script"]         = generate_global_provision(json_config)
global_services_disable["script"]  = generate_global_services_disable(json_config)
global_services_enable["script"]   = generate_global_services_enable(json_config)
global_packages_install["script"]  = generate_global_packages_install(json_config)
global_repos_add["script"]         = generate_global_repos_add(json_config)

print(generate_hosts(json_config))
print('{} = {}'.format(disable_swap_volume["varname"], disable_swap_volume["script"]))
print('{} = {}'.format(disable_enforce_mode["varname"], disable_enforce_mode["script"]))
print('{} = {}'.format(global_provision["varname"], global_provision["script"]))

if global_packages_install["script"]:
    print('{} = {}'.format(global_packages_install["varname"], global_packages_install["script"]))

if global_repos_add["script"]:
    print('{} = {}'.format(global_repos_add["varname"], global_repos_add["script"]))

if global_services_disable["script"]:
    print('{} = {}'.format(global_services_disable["varname"], global_services_disable["script"]))

if global_services_enable["script"]:
    print('{} = {}'.format(global_services_enable["varname"], global_services_enable["script"]))

print('Vagrant.configure("{}") do |config|'.format(config_version))
for index, __server in enumerate(json_config["vms"]):
    name     = __server["name"]
    cpus     = __server["cpus"]
    os       = __server["os"]
    memory   = __server["memory"]
    network  = __server["network"]
    hostname = __server["hostname"]

    try:
        __disable_swap = __server["config"]["disable_swap"]
    except:
        __disable_swap = False

    try:
        __disable_enforce_mode = __server["config"]["disable_enforce_mode"]
    except:
        __disable_enforce_mode = False

    try:
        shell_provision = __server["provision"]
        __vm_provision = True
    except:
        shell_provision = False
        __vm_provision = False

    print('    config.vm.define "{}" do |machine|'.format(name))
    print('        machine.vm.box = "{}"'.format(os))
    print('        machine.vm.hostname = "{}"'.format(hostname))
    for index, net in enumerate(network):
        print('        machine.vm.network "{}", ip: "{}"'.format(net["type"], net["ip"]))
    print('        machine.vm.provider "{}" do |vmp|'.format(vagrant_provider))
    print('            vmp.name = "{}"'.format(name))
    print('            vmp.memory = "{}"'.format(memory))
    print('            vmp.cpus = "{}"'.format(cpus))
    print('        end')

    if __disable_swap:
        print('        machine.vm.provision "shell", inline: {}'.format(disable_swap_volume["varname"]))
    if __disable_enforce_mode:
        print('        machine.vm.provision "shell", inline: {}'.format(disable_enforce_mode["varname"]))

    if global_repos_add["script"]:
        print('        machine.vm.provision "shell", inline: {}'.format(global_repos_add["varname"]))

    if global_packages_install["script"]:
        print('        machine.vm.provision "shell", inline: {}'.format(global_packages_install["varname"]))

    if global_services_enable["script"]:
        print('        machine.vm.provision "shell", inline: {}'.format(global_services_enable["varname"]))

    if global_services_disable["script"]:
        print('        machine.vm.provision "shell", inline: {}'.format(global_services_disable["varname"]))

    if global_provision["script"]:
        print('        machine.vm.provision "shell", inline: {}'.format(global_provision["varname"]))

    if __vm_provision:
        print('        machine.vm.provision "shell", inline: <<-SHELL')
        print('            {}'.format(add_title("Virtual Machine Local provision")))
        for index, command in enumerate(shell_provision):
            #print('            echo ***** Execution of : {}'.format(command))
            print('            {}'.format(command))
        print('        SHELL')
    print('    end')
print('end')


