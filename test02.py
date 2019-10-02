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


def create_sharing_key_script(json_conf):
    pass



json_config      = load_config("config.json")
config_version   = json_config["globals"]["vagrant"]["config_version"]
vagrant_provider = json_config["globals"]["vagrant"]["provider"]["name"]

pprint(generate_hosts(json_config))

try:
    global_shell_provision = json_config["globals"]["vagrant"]["provision"]
except:
    global_shell_provision = False

print('Vagrant.configure("{}") do |config|'.format(config_version))
for index, __server in enumerate(json_config["vms"]):
    name     = __server["name"]
    cpus     = __server["cpus"]
    os       = __server["os"]
    memory   = __server["memory"]
    network  = __server["network"]
    hostname = __server["hostname"]

    try:
        disable_swap = __server["config"]["disable_swap"]
    except:
        disable_swap = False
        
    try:
        disable_enforce_mode = __server["config"]["disable_enforce_mode"]
    except:
        disable_enforce_mode = False

    try:
        shell_provision = __server["provision"]
    except:
        shell_provision = False
    
    print('disable_swap = {}  disable_enforce_mode = {}  shell_provision = {}'.format(disable_swap, disable_enforce_mode, shell_provision))

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
    if disable_swap == True or disable_enforce_mode == True:
        print('        machine.vm.provision "Optimization", inline: <<-SHELL')
        if disable_swap == True:
            print('            echo ***** Disable swap')
            print('            {}'.format("swapoff -a && sed -i '/swap/d' /etc/fstab"))
        if disable_enforce_mode == True:
            print('            echo ***** Disable enforce mode')
            print('            {}'.format("setenforce 0 && sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config"))
        print('        SHELL')
    if global_shell_provision:
        print('        machine.vm.provision "Global Shell Script", inline: <<-SHELL')
        for index, command in enumerate(global_shell_provision):
            print('            echo ***** Execution of : {}'.format(command))
            print('            {}'.format(command))
        print('        SHELL')
    if shell_provision:
        print('        machine.vm.provision "Local Shell Script", inline: <<-SHELL')
        for index, command in enumerate(shell_provision):
            print('            echo ***** Execution of : {}'.format(command))
            print('            {}'.format(command))
        print('        SHELL')
    print('    end')
print('end')

"""
nodes = ["", "", ""]

vagrant structure:
Vagrant.configure("2") do |config|
    nodes.each_with_index  do |srvname, index|
        config.vm.define "#{srvname}" do |m|
            m.vm.provider "virtualbox" do |vb|
                vb.name = "#{srvname}"
                vb.memory = "4096"
                vb.cpus = "2"
            end
            m.vm.box = "bento/centos-7.3"
            m.vm.hostname = "#{srvname}"
            m.vm.network "private_network", ip: "192.168.70.12#{index}"
        end
        config.vm.provision "optimization", type: "shell", inline: $script        
    end
end



Config file structure:
{
    "globals": {
        "vagrant": {
            "provider": {
                "name": "virtualbox"
            },
            "config_version" : "2",
            "provision": [
                "yum -y -q update",
                "yum install -y -q vim"
            ]
        },
        "hosts": {
            "generate_hosts": "True",
            "domain" : "mylocal.cluster"
        },
        "users": [
            {
                "username": "vagrant",
                "generate_sshkey": "True",
                "share_keys_between_machines": "True"
            }
        ]
    },
    "vms": [
        {
            "os": "bento/centos-7.3",
            "cpus": 1,
            "memory": 2048,
            "name": "node01",
            "hostname": "knode01",
            "network": [
                {
                    "type": "private_network",
                    "ip": "192.168.70.120"
                }
            ],
            "config": {
                "disable_swap": "True",
                "disable_enforce_mode": "True"
            }
        },
        {
            "os": "bento/centos-7.3",
            "cpus": 2,
            "memory": 4096,
            "name": "node02",
            "hostname": "knode02",
            "network": [
                {
                    "type": "private_network",
                    "ip": "192.168.70.121"
                }
            ]
        },
        {
            "os": "bento/centos-7.3",
            "cpus": 2,
            "memory": 4096,
            "name": "node03",
            "hostname": "knode03",
            "network": [
                {
                    "type": "private_network",
                    "ip": "192.168.70.122"
                },
                {
                    "type": "private_network",
                    "ip": "192.168.70.124"
                }
            ]
        },
        {
            "os": "bento/centos-7.3",
            "cpus": 2,
            "memory": 4096,
            "name": "node04",
            "hostname": "knode04",
            "network": [
                {
                    "type": "private_network",
                    "ip": "192.168.70.123"
                }
            ]
        }
    ]
}
"""
