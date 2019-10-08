$snode01_push_ssh_keys = <<-SCRIPT

mkdir -p /home/atam84/.ssh
chown -R atam84.atam84 /home/atam84/.ssh
cat << EOF > /home/atam84/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA5SeL3mqINKT4FZ8OUPprjzE91wTEnQVSSLKNu5ekQPaMG4N4
VtPWMpXzSIe96foAarf46sjnS9xu6jK/v9K5xB0WNEr+zYd7cZOtrZUW1y5fKx89
wsknC8J3ghxn/M0mobCq4mBee9UME1oqn8WpfFI0Jq6IUNUpgCNcw0bQJALoMfCq
ntGcPzsp2yP+ZcZkQwTjCWzl9a6uBJf+OYGqnL941oBklN59THkT0doTBIsOlqTT
/dbwekZO/MvXW8Ubd+co3JKULaYufttE4vJJQPx884RNtNEFGAiF57tQI2ReJFcP
jpMRgvPCfKnwTXvC2ZG4i0hswKGSLWnzvmWtfwIDAQABAoIBAEFatP5a/bud7Q8l
jMy1juWI0q03M+fgc6Y+HkQJLJRGfJEAPtrskaNdtsPRyu0nGuVU0M4NPEIbfRqY
HK3VqJtw/DsvxFnTsPYkex0NbzUxiXzf7RpXiiZFcRYPiezEiacFnsbvWyMQEOCY
D53/nqXRQARkNIZxNOPRsgwTbxtFmr8oQLIEXLYIFbPh9RgC2SRi4jR79Q8zwesm
RDMFNr174ItTITWyGLLDjVysQmMlQx+Q3QQL664d0CQqPN2h2J3sas+LR8yAI69N
8+JOJsefNwk48Ia507S2GhW4Vy3yBl1zNPvLExcHQIcQl/vfMIe4AGJ4y/Ud2rRx
IkH58SECgYEA+is/5MZFJ9MphkwpHdYRaBeX8rMIiY2/auEE3rb1xJDnyuARo53b
lZTsXUbcJ0mKINtLJs05p9P4mMBywrq+u3dive3WynObOOxskzdXWlz5vYw3Kiw/
GksHnSJLUY1nWql8VPgQAuTvgY1S3rvej5bQ0oCQVwXSX0ZUptF66FECgYEA6n7n
c3VKMfYvv07Un5X+kujKw9UtfFEF4xnR/6XrMB7mRA8eOaIB0VbEaismQYh39ey2
YTQNlaaEFUoNi1n4xWLbb01f6Frd/cil2NMseGRqM5WYeP121VvHHPUDV5FUKORd
J274NEtzKOSyQkDUg74DnMzyGNqL7KZNIZollM8CgYEAl0HZIvDCVX72R237GkAZ
TC+fvq2DBvA+gVfGQwaqeIwIqgBqidvjLYDanNdAOzzamF0fBjnll1SxpWIOwTB6
LAzWFfIdAVF+058XUreOSGOY2INTw1r3WGVvGBHpKkjt6cI6G4HU5HsZWOJi7ar3
uSe94Ni87PDnLpXujuJvhtECgYEA3bqrfdgNFRr1YQ7YLCI3epBWkj/z55XxXCEh
GXu43GKLVxV4fgR7dYd25/DvFo5E6Cww8861fajbQgoornifq3zjguYF5v5s5Dii
4Vgkt54zcZ1ldBovEGXc67udsmJ/0r7EerIKTeB9/s/o4o7Mo9m7Lrv3u5qDLny9
eCV6na8CgYA5zjALCMASl2aavIfHFof+YhwvZlBSaWBtQzEtsD4a4UijEZEyHaEG
2JIXSIZAGEUqwOtFUSy//5+vOwYuWIoLpA25yVitRfXNlSHRD2f/uZHQCi5l3EAA
iHD8CtlCdDPffOZ8T3pCElJfnBk5TPQrG2x0ECx7jrSIqEKu3oCwFQ==
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/atam84/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDlJ4veaog0pPgVnw5Q+muPMT3XBMSdBVJIso27l6RA9owbg3hW09YylfNIh73p+gBqt/jqyOdL3G7qMr+/0rnEHRY0Sv7Nh3txk62tlRbXLl8rHz3CyScLwneCHGf8zSahsKriYF571QwTWiqfxal8UjQmrohQ1SmAI1zDRtAkAugx8Kqe0Zw/OynbI/5lxmRDBOMJbOX1rq4El/45gaqcv3jWgGSU3n1MeRPR2hMEiw6WpNP91vB6Rk78y9dbxRt35yjckpQtpi5+20Ti8klA/HzzhE200QUYCIXnu1AjZF4kVw+OkxGC88J8qfBNe8LZkbiLSGzAoZItafO+Za1/ atam84@k-node01
EOF
mkdir -p /home/sam/.ssh
chown -R sam.sam /home/sam/.ssh
cat << EOF > /home/sam/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAp19tp4kk60tc3eCuOVRvkIdlh8cU9J53gFRQK7+uy0x592RX
j6SZNAtszOP/9QGDKtjO4vMHe+nslYw2aOrqVoqiOfjpNE1dplJ1VrgnOkHHAnEK
yUgV1ZLpu+Sz2LNVYv+2IrJsZDlpNBC7b35YN4mo9A8drG26X0MTUv7LgxJG7cKl
RaxdSaF2KWTBJ2i1mJQbng4x7KC99ldcfNCdN4D7vo3YyDtH9v3pOs5A8mthuI/a
4aHUBuxc9ndVWsR2ldmn7Ej2gV6EMOxRTiv3tPX0LvaSGsYCvncdKDYrTzklzoTJ
5Vd4ml1tI1Kwh+mo87t+MgxP/VJh+xA76Rjw+wIDAQABAoIBAG+u4sm/Xs5PLHm1
miwRJpzHbD1s35PXRiBwokp/DpEDyAMHhtIH4F71HLWfkkUXrEHkCDEyQBU0Y7Tq
qcfasWHsAhIzANHwqgP40+l42lwqVjRP4AWtvzwTWzoQgt2f1ONJhGykqGU8VfHz
FE9yfEUa641npMJROeKlLHjeIkijzbv2+/6iRcVUcAgElcQH6nDDDTlMLliKy828
jxlysQZ4lSXmQWBbtKSxKRVfz51DOv+/Xptd/XqZBX3J2wWw3wcPFzd/X+3NsD9Y
MjyxYHkdYmElDtEREv2XONyB+Mz79nrtvBVL3xcedKxRD9au6qk7ZN4zERI5N5l2
NDFwd7ECgYEA3F7IID7HYCodlMTe5T7QhC6fKss58qXQuIH04Ph6zKwy4LGkyJKS
O2jS6MbLqQ6JVv3XEFa/yJCrhm4LbSksBbvJWlL1MKQn0YOw5ExkrlwldUd46RK7
VVU7gDwRY9kzmosjhKYWEoVNjxu0QRi+RSbqXZUIS48XOyMSKiK3PCMCgYEAwm8O
/EBKhgVCRdsY6Xr2lGaMAiS2SeQ4G9ZLzJ+oK976a2Yy21s7DAyw5SWpRIR50neN
HNVUjiF9nojww5Rtvl1ZmV0KIiCkVjCKOoLg2w4kW1gZ5CrhG6Yu48BPY226W9XA
W0IB0QdNTNLG0ig4hi34FcGw8qf/EU8QOYCHOUkCgYBQglQs66KdcGWEP3SLXiqB
0CKYWMzf6FJbxia3ti/u7I5d5qikGmBQUhiTsGUha00jufNDZd4FIU14/GUySVNq
+NM0K5CmZ6KgebM7hOlXhhStRyJWTGCiaVQmoktcJjMjJ+gfAyqXM5pFSULOcYK5
8uC2tcblC+7ZzRNKz4oP7wKBgHi7q6t5ZI06AMAN37dDcpAN6Ux/bW4Ot8SZWfIT
BcNQL2G3UUcirFS8IK/5pdT1CgxlzgskcN/c7fsef5qCtW6q2rM/scYlTMZ0V7Ej
ieqcKnlKCLHE6olXtPAZf3J3NWxHG63PG/+nMBnPHERtU0QGkXE5F95l8R3XYXTD
WbR5AoGBAM2MPVmez0ftM/NMJ8SCxrm1eUcYTX81UDb37vzuzwU/7cH/M8ILSCyl
96s1sl/X7rEtXantffXb91nOEaK5SFzbxsfHSr0vQ0Hjrh4UIWL5FZsilivDJXQW
/9sKQNBIlFwdLbJ8mHdNRlzMjyt98kIRkqWYMmUCeeygZz1MJFL6
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/sam/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCnX22niSTrS1zd4K45VG+Qh2WHxxT0nneAVFArv67LTHn3ZFePpJk0C2zM4//1AYMq2M7i8wd76eyVjDZo6upWiqI5+Ok0TV2mUnVWuCc6QccCcQrJSBXVkum75LPYs1Vi/7YismxkOWk0ELtvflg3iaj0Dx2sbbpfQxNS/suDEkbtwqVFrF1JoXYpZMEnaLWYlBueDjHsoL32V1x80J03gPu+jdjIO0f2/ek6zkDya2G4j9rhodQG7Fz2d1VaxHaV2afsSPaBXoQw7FFOK/e09fQu9pIaxgK+dx0oNitPOSXOhMnlV3iaXW0jUrCH6ajzu34yDE/9UmH7EDvpGPD7 sam@k-node01
EOF
mkdir -p /home/greek/.ssh
chown -R greek.greek /home/greek/.ssh
cat << EOF > /home/greek/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA6n8qQBtEByrqJc98dWPwYeZmIW8pqIZaGSjQctfnYV0pjNH8
4QAgIt2RT6zc/38ZkhbG08lmYpt2RSjCIpy4KCWERY1k5jdYqxWgPPASbr8qKFCe
tFHKNQNiXJ12QLzqyilOP8jquVSxBIKcJuDOUd59gmgM6KM87NriCUl7c+6nc9Gn
XLMZTFrnzONu0IillyBIeh8p+m2KPdqRTHuppdNLJxIDWVbatXxaFO6VgoBci+zc
R3J0UrRxgl0yldqJYfaCk7Lwkm1ciJrnnrLXqkbQurdQJHYMK6o7X8wrRltL39wd
uEgBOS+HrGl+mHGhij11thnRRIx82BqGwxabVQIDAQABAoIBAQChrd/xp1r2Hi6m
tzI2thtNRM/yCXUNjuScKDnglOAhj1xQjY/vimid4WqJJsSRHI8C3NVlvJztLAcV
lA6WUrveYk+arOx+lnZ6L0T1/wiWdxOYDE4AQcxLVPQCq0aXSCoSDPy4mczMz4nl
dDA51hIq/F5JBXixBavCGwByKsoFmZrU7rceE6bFklUfVzs+5zHZr9ecjY+Qzk2s
/n+zrMUC/2HgXeQVejqySrx5QsuEzMgEAMvDXNFL9AmmWaXPHsOUAfbGDbQZDViq
RtOcD2NTEVQb+S9fZgld9wke0j9Y3DOrtR0jt8Etmnb2oh1T0zneiC87xgeEEDnV
5t6tnvtBAoGBAPefMzs50wgeciw52ue5iC5iJmTWsVzr0697O29ze7GodEppyFD5
tFmqy8dAdhUmYPH5+MFvZ9IEgg6a+AdMKmD/Q0sjIJCg0KPr6cBAwfP/ToVIknTr
3ohb7QkL/MHPC1qA6DQ6VK55vnKXOhD7HXA/K87bBoyXLsAqL/7RVeXdAoGBAPJu
R8NYlF8hGVDcgzFzJ2T+PPMgJFeB/BdRGIz4Kytx4ozZEppphmEy6A6Nc9cIVCVY
TvUq6asmitOcTxtaKPnEA0bN7LoTwWaoUgf5qA65DPHBC5p2H0oL29c0am39/pKF
JRsyNZqrQIPEvaSga0loJ7nNJHMzmA7W3LcfpR/ZAoGAFiBDk6c3FCKkUQ9aYBpT
8NEUXS5R6tunrqZ0SSEojFdhDMUnARVO6DQ6wTMhWgJz5ytO7vnlbP66IFP4la5Y
mxI0ESKyZjn4aq1J1cPzkLnfaklxzMDGwah1JbnMfATkHtIl7YTIzE5UliitJ5dI
qh766yDnFOjtZH5gi4RpCIECgYEAoay+Gx6lxFNUiMKmk4HSUd3jU9ipo9pB/mLM
1qZiU9TdW0UgzO12+rdyXtIi4NLjGwyri4EU2FkZ2Emzz+/ux7La5ItMRkQKhKXY
Hw118GukoE03qckA0Obbs8d2+ueasKguuNZhPUbb/YRlXLbHFetqItUWa+WKkMrl
4xItkvECgYEA1Vtyyjv27SJVn3Xoli2tZZoQOERjbkRt2SJkSRCi9HgWzQuBeoZ0
tCkE8FUk+hScPSD8B6VwkyRP+S5S7cotkSAG2PNAumLpFJGC6zKe4liHT9DKQDvQ
P1ErF/sx/Bg/o4lKFlicDG5FheH52OAMlJH2S4SJeo5k9pmw8EN5sT8=
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/greek/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqfypAG0QHKuolz3x1Y/Bh5mYhbymohloZKNBy1+dhXSmM0fzhACAi3ZFPrNz/fxmSFsbTyWZim3ZFKMIinLgoJYRFjWTmN1irFaA88BJuvyooUJ60Uco1A2JcnXZAvOrKKU4/yOq5VLEEgpwm4M5R3n2CaAzoozzs2uIJSXtz7qdz0adcsxlMWufM427QiKWXIEh6Hyn6bYo92pFMe6ml00snEgNZVtq1fFoU7pWCgFyL7NxHcnRStHGCXTKV2olh9oKTsvCSbVyImueesteqRtC6t1AkdgwrqjtfzCtGW0vf3B24SAE5L4esaX6YcaGKPXW2GdFEjHzYGobDFptV greek@k-node01
EOF
SCRIPT

$snode02_push_ssh_keys = <<-SCRIPT

mkdir -p /home/atam84/.ssh
chown -R atam84.atam84 /home/atam84/.ssh
cat << EOF > /home/atam84/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEA2Q86jHlQB4PdcnaBdvSWQOIhfhhSVLsw/pFgMvOpseSrbd5l
nuB7DoNl4tjRe2Y2uLpifOeRDp5ukD2UEbb0f5NF6yIt8PZoqRF1voCGOwap+VZJ
Yd4fEfbynXWPtl7lR1HfYZ4X4scIK1z1Z/Ci+7Qq06AfbGUg9VZrXH2kXH1F/B0u
wp8KGzZusthYGEv6+yvTkCkqaxHOBJ/QTgwrcubm8f5BN38eW+pdyFk3qqbz/dr4
XPzNNjyrimYozREHnpdB/pIhDGkbAlJqZBVkUJd2BW7RRYiKi9+i/ecAQeoFsRp8
P++3JHzg5703W8jrWvc/3EeAA6BZIr3lghDV3wIDAQABAoIBAALE0vZfxcmSwQxo
vpYJ4LDLMaouHT6/dIyKxjNgMFX4mMc6AwnXyzoQKwiNw35Te3c3yXHWcl9BXh+w
6WagctX9xvKM6REd04/0jQ/1C8FNAHYRx7Xb44GTKN0hVsf4xev2+2Z/Ycaey1fi
Q68jvrB/R9yTOlNjptv6UjxHzgTv/iRKHyF7tEroz0baT0X2e+qpcBkEWtbzP6wT
5B/UDMDb5Ch+JFW2844zEfUrJqh3TDGO23wTARNQZlR3RsZhlAJvR3X1dNeBBEJL
ULwwDfOB5Kj5hWR9++YvQ4ymEpvnw0w7XIZNuMAaGodraJEiYVeN1C4AvQhYDzqj
8kfA1IECgYEA8sib6sAWS1naoxu+7CN70gXqQQMR3eBIS5EeYDBR+uhMzu8JNoPP
H51iCkBS9CG3EjuQtFkE43NXp+CMRS42bLrRcUWoWaL43nABTkQ9t1u/A8R+mbsI
tm+o8q88k2uZTwYY5djtp4hJaP5GgYxHWTt9A1akjeqZrpFJmUG6s/ECgYEA5OAh
5wo9e8+4N3uqiAuMN05B88oySk4g5d9txyslzQw96pLJ6uYgS48u3KUVA/VaPpZ8
Kp7EHbik0S2lc6YYV4RzKvwAMa6wAMNxQQXg0dZFaM0htk/lX7Hnw+6g2nh/gMZd
OM01y67s2DYJszHRp5QYU9ilsNj/cp8uMp7sts8CgYA59+xCgNrR4wJxL47GkzJd
U0w7eaAqegLJCD1YejEY155/SlPI0HAD/HAMQo+L+wDbOZ2zcg3YwRGM4/CaFA6q
p3CauycXP/JsKhIlveV+gkl5fNE9o4rRBJgyWeT8zhQs6ifHuaQE/GWKzCvJgtUG
WU3gHi/sMre/FrGcBjWuAQKBgQCsxJ/y5qD42BkoELruzUC/8twIKmaB/q4It/sH
MIPtX8NRUhMHtUVFpETsm9TcUxYXTsNV7Nj/0oTfvgQ543RWhA3nsah32HTVbrMM
MWK/I27rqIU9ONxdu07HcVeM8w7UZ2ixWv6zzUzN/SSfVwj65ejjShPxBiz2GkDm
R19KswKBgGVNYRYP8ULRq4dDWypZ6elxbZRe9tRCTorF9ZrojRJ0UnqVm0cLiQ5s
W1/8uh63lS+nyQOe5uvK6dHv6mZB0JzOdg9QroThbqe4WwP5JTNoVpgkQ+D7cM36
QsaLF74avKD9vqQToZWGs6kfcD165wiTVz8URwVDrhDXKVWjrabq
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/atam84/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZDzqMeVAHg91ydoF29JZA4iF+GFJUuzD+kWAy86mx5Ktt3mWe4HsOg2Xi2NF7Zja4umJ855EOnm6QPZQRtvR/k0XrIi3w9mipEXW+gIY7Bqn5Vklh3h8R9vKddY+2XuVHUd9hnhfixwgrXPVn8KL7tCrToB9sZSD1VmtcfaRcfUX8HS7CnwobNm6y2FgYS/r7K9OQKSprEc4En9BODCty5ubx/kE3fx5b6l3IWTeqpvP92vhc/M02PKuKZijNEQeel0H+kiEMaRsCUmpkFWRQl3YFbtFFiIqL36L95wBB6gWxGnw/77ckfODnvTdbyOta9z/cR4ADoFkiveWCENXf atam84@k-node02
EOF
mkdir -p /home/sam/.ssh
chown -R sam.sam /home/sam/.ssh
cat << EOF > /home/sam/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAo42qC5WZ354FUt7N/EHDPD2pFg+JCjb5L3N7CH1HeUVvx8mc
LvTcXPDGX2ccbCTI4sXhBAF3585XHC71ZD8SUVeE5Er7vZWnS6k78MC6EkxBqggO
b5s/HmY6FceCd63hL5XpXfvtQeUk/BPLF7gau9XK/IC3d1kjUhkEaYSBQUaoKgUM
mwTmfFi/5WzHEWXYPgomADq75WQTc4lIgWGCxsyHdhAcOFsbyUqoWPAABmXO343l
4b7PDYMBA3o/+cUgAZvSQxEMA5obMLp89RFDyjBCf6jkUqQgEjKP2u/2MHUs7ICY
vhnIou9DnHau9y5E2FSf8DsaV8Zf+s7L5rptdwIDAQABAoIBABg0Z/0M59fbSAhq
put1RBKPQY3dQLe9SQWHvqaT+9brus5DfRTJ8i7jB0ipNuCeVQiSpml0Wi15MRUf
sftjBi/5ltY+bqExG7Ar3I4Vx7Pbi0BBrvk/bYjvMht1Ck7x8cicFAxvsz40TlPs
Dft1qKcxzbeuyPglvf9xamC/Vm21ba4fSQ0vHq9rBgOIThzLqPXBbqK971BXk6eB
u6PlATW5fwtZjdJ8aSEbq7x5GmijFPGltzbI30tbioC6++36XI1lccyqjjBVrgpR
boiL+0uhvDSK+FQzuv4BVSFM9fA4kzMZh7C3kTEReZal6wyGOt5mUQCbGn1vVE+7
XORai5ECgYEAzrtgeveJALuyt3elOxacB8HLIkd+J7KquIYdAc5HzCbFJiWEQC4G
Bgc8fmbZtP3mBlOSNdI4EuYOZ9BjYAxLImJHCaZ2X1pH6yITPCAww7jB30Qpezu5
RC7gi0p3nJbmV2gsTnajKNB9k5F4tkoxHp9m2hymehQQbBh6xeaf3ekCgYEAyof7
gflre8p5mYErxqbi5UXxPv+/xWqhY5voFrlrCDDxNwIjkgd5wc9WRxTTkixUdGiL
W0S1ej212WkAGvJaENgNkPFftoktETPAYnwtjMYnQkIk/IZGLb6ElgixzfEfCtej
KZHjlUYdDLXviqbiZr2A28nq2rAJ10wZdsqd9F8CgYEAvJZwgByaDWIsuXNa9tk8
Q1NFRKMlcX9qf+RQR9pu4synYpIs4ANcGVm2lLSse5B2q2THZ3O7FXpqv8d5MCBm
1hoDJcmGCJwqKVSvaVUQRyufKFZc5P9plcqRql+nV+DMhgYRDQ7q7ourUtgM33Y0
8vOE9wnV0F3HUWTPcwNc6SkCgYEAgFkEri2eS+jYfss5Lr7780gLxlzU7wrQFAvt
XNlMVviNJMsaN6S9KHF4v7sXCP9G1i6agdBdIYaSA6FjC7CiGyKQFlagzVDJWqlt
Nfxz8U5x+q9oOQ/u0XZ3F42TAGvZvElDgUiO7T5tkmyJzVhNCcb2LlMbnlMJKYN0
b6+fwgkCgYBq6sH07rjx2l5meNq/S5+YlKuVpLxTlOe03nh5Z/rGYtxCQ/hg3gKn
MFFR1E3tTgobWNYDi2Hyl2620RS46UOhn775d4TCLxbPCPVvGflOXBKYHX9JdtAG
x1Vl4uyxnG7pTNGqqNVlWKUdLOhOI8ckWBFmaQEsRTM9GgCbgnIPlA==
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/sam/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjjaoLlZnfngVS3s38QcM8PakWD4kKNvkvc3sIfUd5RW/HyZwu9Nxc8MZfZxxsJMjixeEEAXfnzlccLvVkPxJRV4TkSvu9ladLqTvwwLoSTEGqCA5vmz8eZjoVx4J3reEvleld++1B5ST8E8sXuBq71cr8gLd3WSNSGQRphIFBRqgqBQybBOZ8WL/lbMcRZdg+CiYAOrvlZBNziUiBYYLGzId2EBw4WxvJSqhY8AAGZc7fjeXhvs8NgwEDej/5xSABm9JDEQwDmhswunz1EUPKMEJ/qORSpCASMo/a7/YwdSzsgJi+Gcii70Ocdq73LkTYVJ/wOxpXxl/6zsvmum13 sam@k-node02
EOF
mkdir -p /home/greek/.ssh
chown -R greek.greek /home/greek/.ssh
cat << EOF > /home/greek/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAtEElJ+k/VnHiFbnaBW7tpk/EOlZw98NjxIco30TvfSIv0qb/
aLyTc2VBTTpyNr+C0DxEXWyChIZ4X/+bfOmUMrsvgi5XOwqEpb+HdwB9nfEhYvpn
bqIRfs2zFHzbpDKx7dUhPqgxMtFURRmnMc30f4ekUDgM5uoqLXotRRmcVXgYY6EA
34aANCeGXgxeXFYd4gmF09gVbdcn1OoeuDn+Z5FItYbuOHJkz24L1UYPJPzoD5LS
KxVG0gLJj5zi/p1dsaLqF72se5KIP1+d/wreGfewXNPSjyNmq9CzpB8xXsZcuWzb
mZS4lCcgcRmmn7U0bLmkOUhrWLwbQet/5dvIhQIDAQABAoIBAB7hBhd3OrV5Xuyv
4OyLW0ThZ1FDG6kmHMI/ET5mVcyO/bhNiXWM0Im1L+GmAIjmd+dqW5/Rhe5kBt0T
MbTNYujp7jKT87eWjrDCRdeaCurysvB8yxlFxE9/t4zr8siHMrn2h/Ju57a364LG
6UB78sWiHADuCS/Jr54IzxaGU6TEW14IqTQ4FcuvmB6OXEhQekOa72mQYDg+m9Mo
vo2wl7lLjdRE2yDXUfe2ugECOm5EeNeaV6h6PgzH2sA8va+9VsIcsyWK5CLciNi9
wjoGzPD6AXRdbPI8PUsZWaEmfm2bjGEbwKMn/yUfBkas54g8eYUiY/bfpTlS3UAp
wKPGIsECgYEA4lHjE+AppYUyaAcLHZMvm7vEwhuRblGm6hfEvBhW1mvyXi8Vo2Mo
tvryqdiSPBQ8yO7dwvtBj4xe2D25SU5PPI2eZaE0QRzGcbw/d/cpLNLUkFN6NtYL
p1aJwhE8eZtCBjZ4kg39Ncn6cReSjnd8fnkFin1CzWj6EgE0BgsX8lECgYEAy+S6
0bqVsyB7CkVA/SOcs6DZOqUDUqjWDpbZJC6r1CRQ+bcnuTPcalW1d2GwHtk6ufPr
aeu4HP3z2iaZbTanr17QYsGCbS1kdW5uIfoV7tlM446EeCL1gmAMQc2fBxzsv9e0
+LDb40NXaDyQmR989pUNwaTFyptRym6j5LdhkfUCgYBBDNJdAyBVT/yWA/hA7u5P
L+A0/qGFePil7mEAw2oqRWqrgZMRnE22klivUu1tUU/LXUTmZzuH3Avi0ZLxLA4A
VKBDi9suH+w2Aqqne6YdGRg5x5SoMEu3NFtyKWwdc++9Q2jSaizuifhvCxx30IY6
/+QE004hJlxCUpA2cHfYkQKBgQCiiyf8BrlM4fn0yBz1MSy9bt9+hwpNHVf4rX1S
APru1jzPtpmuZY+0Hbva/j+/eAH/OFtWR5qxUirSoK7zh/zKK9YIxKfLjcJmc7DM
2Wgez5EiX/1vIL+EPjnHQ7shmoeKsNYO5D+Hv6mw6YeE6rtegJlE5KzhxkzACtAR
h7f6+QKBgF0IxJGiyKuv9TYbGoArl3n74mCyTgDjfIGlWCR0I68Mxv0jE1LbeEBo
LZV3j5Z5nqMEndu7sQC+E5+d3IEoXYUGuGa8gctmOCzUVZxELA/SH6Vh5iG0z71p
utE7xho690CH3BfHwBehKOQwAUM+BfQ+CDpp3CGZX/FTN4yChIKF
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/greek/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0QSUn6T9WceIVudoFbu2mT8Q6VnD3w2PEhyjfRO99Ii/Spv9ovJNzZUFNOnI2v4LQPERdbIKEhnhf/5t86ZQyuy+CLlc7CoSlv4d3AH2d8SFi+mduohF+zbMUfNukMrHt1SE+qDEy0VRFGacxzfR/h6RQOAzm6iotei1FGZxVeBhjoQDfhoA0J4ZeDF5cVh3iCYXT2BVt1yfU6h64Of5nkUi1hu44cmTPbgvVRg8k/OgPktIrFUbSAsmPnOL+nV2xouoXvax7kog/X53/Ct4Z97Bc09KPI2ar0LOkHzFexly5bNuZlLiUJyBxGaaftTRsuaQ5SGtYvBtB63/l28iF greek@k-node02
EOF
SCRIPT

$snode03_push_ssh_keys = <<-SCRIPT

mkdir -p /home/atam84/.ssh
chown -R atam84.atam84 /home/atam84/.ssh
cat << EOF > /home/atam84/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAy09B9B7Lt2B9XRzcLdcXwIVotMiWptvyeOFvG9mchClRJFbx
Arpq+Fm3DrPplpBYvZZMlz9AAeREOImkbgGJTPaiNE5dKgxta3t07w3bVmgZaHRZ
uxwP1G+AkaHnjiSEigrPyCaw/k7YE64n7H5uHjGJPXlO/GSJCVEqPPx1yUjNKKCD
51DzrsuDZZqbpzOQZqc/6tGnpwnWthQ3c7eKUbRvCRKLaEXp7I2GtATcYy8uEN90
mlyW4ZW/0C8iTMVD4zJTvbNA8ni4OpE41C5Zcg97mmpD0dPhIuWbu4nRVSXc69zU
mrIrX5G8cTHvY6tobq7oFNsWzOXFzRxcvetBiQIDAQABAoIBAQCpVY0wP8obJQGl
YRk+EO2Wi0dHc96OgZk190Wso5YKOcN8ifFY/V2FFmwykcTXg8h1t855FtQ//xiX
IoVSnnL2KGG3QSG1mP41zHD7fsYV9MRczLPD9T52CJzEL16GdIHz28duBFPcrFyq
H57fCfq7qTSOgBA6hZ3hpbmRbBDKoR02QNvELXAxsMOfeG8IgYAmjJsc6J6KmIz0
SCmF/FR6yyH2zxueafeUmG7Xqo6mptWemA+VGSEZeCzguaC5yG3MpEqeTObitPfx
hTVtTwWNan47oR4yOSeDkfY7xNq1SIFUHWXuILpc9ooPkKtEw3xbR6+1o2wgParf
xtR7Tg3lAoGBAOcqFX6j3it9gojJC9qjsOIF90pfWWer/4gpEPsLf5bA3jKA7h34
0X8RbVY+dxhbDAbhbP7swHI6B7Spcs3j+lR4UHKLFFUKLgKipJWyJYsn7J6KZpRz
/MU+sf2ypYKqw2y72En9PwJUpKpzyE85BP7VfmoMGXSU/LjdtolHa86DAoGBAOEn
Dx374261PvSBEKJ1hmIU5PwxVczdfkWxPLUS3f3cDkqq48GIZdO5lB4hZoJv+Y+8
ayp/bygK4ugBYymgN7X3Ks1e4JM0LinSX9FLJO1kJENFCrTokRzpEUrpYAQfhPBv
gbOVdbWXkEQJIk5+e9dmdBo56TQoGMxWr3+80PIDAoGBALtkMy6JGoY45YOLLw/b
mH1xhqkEqI5RMQGpALnx9Uk5KibYu68SUInoj7DVTGgzDonZXik9tTgj8LE0l/tt
7zVgnx5rvly9ttSuEivD0YmAIOHYohV//Q3MqC9YDbHiSi+wC0LXh6eVBDOlTmFi
gLkwSp0fF9eZG1Glcd7RRgSPAoGAA7wBHS8zW3+4FpgZbYhjfTb5gVFUKfy2fnNt
HVe9xNskhYqGEoyvm65lTYaiS6GN0xt974uDjXd4wf5b5bHZmrQJyrQ7J1XjOiBa
JH+JkkJp84+umMeOuJsJBWQPiqH3M4G19gORmzxzUR2Rqxmf9jelz1WMj6fmmWUK
riS0ln8CgYBNLU8vIAs/Xetj/rdDLREMrHqdKXXjvAuwVZQMyPcFDeIHbA0EpPa2
X6bqsbujRv7naqi2hcrzoFWcZfI+eazR7D+IGmlRGSfV4PWT2+6Jo9EqAmRJCrtZ
PakD6WM6axwClBFRva5eDSzb8EYpuBiXporz/I0iJtN5mFXmnK0Vkg==
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/atam84/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLT0H0Hsu3YH1dHNwt1xfAhWi0yJam2/J44W8b2ZyEKVEkVvECumr4WbcOs+mWkFi9lkyXP0AB5EQ4iaRuAYlM9qI0Tl0qDG1re3TvDdtWaBlodFm7HA/Ub4CRoeeOJISKCs/IJrD+TtgTrifsfm4eMYk9eU78ZIkJUSo8/HXJSM0ooIPnUPOuy4NlmpunM5Bmpz/q0aenCda2FDdzt4pRtG8JEotoRensjYa0BNxjLy4Q33SaXJbhlb/QLyJMxUPjMlO9s0DyeLg6kTjULllyD3uaakPR0+Ei5Zu7idFVJdzr3NSasitfkbxxMe9jq2hurugU2xbM5cXNHFy960GJ atam84@k-node03
EOF
mkdir -p /home/sam/.ssh
chown -R sam.sam /home/sam/.ssh
cat << EOF > /home/sam/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEApeaBQXOHZ+pE5Ah+tjpwnN+wmhJUX3vtlmi9DrJ4GuAHcNAs
yE4ZiNw5jlrf5IAC3071+Zi6zYk+Gk3UjcajI5Q4h5ZQOtHXEWYFTXU9Hb6bEFnK
/KShtiexZ2Ae2srCgpifLXSW2n3yt1vAq/seTeJIicoBwjMcNaT0dmFEIW1SDSVf
JyeVww30tytpDrpxLaL0HIgo+4SlGmC0mB/toWgNaeBYwklNMjxpB8yhFI7+MlYX
oiRn5aNWt4mtzWBq2utqQK08lEIQwNK1rpmboA4xX7cwRGMNyMq6sRsI7Wyfm56V
Sc+1qoIhR1ZtP02a37ExS/XIvz9uXm1VknTyzwIDAQABAoIBADpjApCfcUNQPsim
eLn3nVSIoWXIF6u3OOnbmNYIV57Vw6ifi3M/kVsKbrM8JloL93bSGl2qs+vMZm/p
fmobQ6Us8Cw/6aKZ4YA9EJavMUA7qeU6ROdfpY4vMA9608Ea5RQDVNoxkzn4Y6jG
gOvGKGcuwWrFDpNjW4VBtcvH9atxdbpvBMutJAJMgdZPW/OtCRynJfsq/44KIm3l
TIcUEuAa5gje6HVtwZq1NiqlNMcC/g/R3Bef7cij0Qg8MyQY0OWZDZRrnkEaqds4
goaKuwMZsLkw48tYWhPggmd2C2M3Gh3eCFJbyHyI8XXKkqEtzMUpll8poGPSVYGy
Y6JX+OECgYEA24zSQQ+eP9Tiny9ejM9hyKZgXy7ABmmTpz12weXZYv7hX9a+xJGS
/q/PEkOez9H780Tw+rmdhi2g1Icn+S+E9smVxTd6TqRvqlOUgDTZFHzElMXNpXcL
+bIHvLcC7IKM2gSwS4431cKKTKL7gqvl5rrTz7Vpytlf7s+kWvmkBd8CgYEAwXF/
xxQhOANzmT93JoLLpaKMv/H/6TLWP7DxPxv59V9j7OASDwfxYCQIFWIgLAab0jxB
NVqrYcu0OChavgOls19IqvrSzdSNaKMAuQ3xqEU7Vxx8apQzVbQ9Zo18HYNuUEAl
QnVj90yncKz3uCIfjJkzg+A49BqE3BFxx+vrURECgYEApl5Z3U92faxWZoZAwbdM
w/2/vaDxhmpupyaeXWRNjQTTyAo02UPu/ew/n/l52MWohLnTWktZoRnma+ZXVi66
NUCgq6fUmM9mhs17FIP3k9zQImSZ5y8E9hwAXPLZ1ls/XN58sWR9zw/yOQywRl74
ghVE+HriRgLe/Vp/kyjlMEUCgYAjGSfZBDL+ycmIrbY9u4+drv+guBT5x+qNxdoP
3FCfD76+tO0x4vwNuJvq3VH/Cvfszlf6iUf9R4ucgN3uChVflVNHCpmDFSTPLnws
F3aYVG9u39FHOTqTO0/EsrkpVbaHQww/obMQpMzgqdGMjExzIzzwmZdb2w/uKhAd
+RVKMQKBgQC1ZLFm4u4O06oTr9pOqbfrIXWiDB0MUX93yh8NhZs8oNHt6x9zzdHR
EAQRpbw6L/AenLwlWCPBNgv85KWoXZMRHghcMlTmd0WNAvv+B0xruxJy3d1tgBmP
A+IK9fvHP2zVhT/JpuWkqIUUB0DLLmXBCwtVN3c/5IfM8D/xHJmKqw==
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/sam/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCl5oFBc4dn6kTkCH62OnCc37CaElRfe+2WaL0Osnga4Adw0CzIThmI3DmOWt/kgALfTvX5mLrNiT4aTdSNxqMjlDiHllA60dcRZgVNdT0dvpsQWcr8pKG2J7FnYB7aysKCmJ8tdJbaffK3W8Cr+x5N4kiJygHCMxw1pPR2YUQhbVINJV8nJ5XDDfS3K2kOunEtovQciCj7hKUaYLSYH+2haA1p4FjCSU0yPGkHzKEUjv4yVheiJGflo1a3ia3NYGra62pArTyUQhDA0rWumZugDjFftzBEYw3IyrqxGwjtbJ+bnpVJz7WqgiFHVm0/TZrfsTFL9ci/P25ebVWSdPLP sam@k-node03
EOF
mkdir -p /home/greek/.ssh
chown -R greek.greek /home/greek/.ssh
cat << EOF > /home/greek/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEAtn2OCofZjGa6Q2CkbmPTkyd1Vfgxv8fTrDsMNUozKARyYDBf
AQGUgK0V/nTg46eG8eam8+0MJgjqui3L0T4MtjI9awybjzyxznOYG1f960udJG6w
wsvbOHJLBAdqAM1DoIN6/yTFDCSGqaXdfUcL+tXJ2eEeh4nHKDepepuHBgARN+Ny
bcERqIzP3jbdB308mLG9qyfP3/Wk4uEg6+wfRz3fBk7PRa/dAFSPDVavfnU06P0M
zCIeehv8Ldj/Tts14Gq89VBEayGhmwjAe2/xFQbrArkb27orCZsd9S5JTvK5F8xS
qU2mzz787eyhKkgjllw8xkyXKlHKy5rWwEBkEwIDAQABAoIBAQCkBI7gqh7+kOoC
Wt8PFIv5q7JLFWrpWtnF58BeORVndy+xgmgxCFGHoYmuDTB/jHe9/Te67yhHGyaV
NUoGA4X7T4ZiK4+5Gq0YyE5C7UAb9fcD4rTeL8kVn6wKr/s3Q0XwA5xNq6eq9T1P
RvOegHek9/eW6z28RjoIzJZ3y0d9PJetK8auK0k96DSMsAGdNOTWsO/JFHL8MiYT
a3V7baKowoRcxeapowalDaUs+U1m+nyer1xmB+UJ+hYphdLhQIrLFxH40CrRXo0d
+aseE5OrELRIWm1C75zUbEgUyJ1PeXBd+Bn1bk4CfCJThNNWNHfA+o5pbin9cZTt
o+FxZ9fBAoGBANrWTn1SVq6es3PfuHWdF3zEHFJjHny/I9Ni+oP6kzOv9XHWJBRg
CGFlHv88wghH/d+7m4cO2KFp2irmXbM95VjsQZgTLCB17Yig3XoZ7VF0+Z1dlyiV
p4rHFLZ8LgEAEV/R6PsPfUtc6bDCyFR4UNFd/KuiUrjxRQ+8FxVE3yGzAoGBANV7
HiTFdT79p/55ftd0GsCZ+iN2KBGmpjv0n1q3ifqfW3UqmBKJ7RtJe733zE3ANntG
UbGGYq/kXFQJ3dtcs/DaF94xsBDPkH6AIFgQ/+JozEraxheZ93R9ZsroToi53rhS
MJ3d4b6BJgVrXkO4ZRZQydvH74JoguVeg9wXkMQhAoGBAMr6xMrROL23TlRIStws
3cBIVszES18CG8TSpfMM1MS4jT0Nl2Gewac1GE8+l+r+e6iuZ1AaoSz29fmcu4Sq
ALU+Tok0H1XsjGqSa1v5+Hn5uh4Q1Ug7p6+9gKTTAgjDe1oZZbSZZWolwEzIHvDa
uHu6Zcb9RSVuBNTXbcG4pA6pAoGANIuYUM61XCrNJcq72MZAK3X65q2XkTimpA1D
B+4zLRf6R+2S/sUqMlQ0+/45ME4GWvNk+kAsnESmIR1ImUzJEZhs1Yj/YDPmyew5
idOtWAoZdrdAmOCR0v9mxLzHT8oIMvAv/Tt27BAXzq+txRdm8kYyWUFuB3g398L6
y7qVLGECgYEAk2+1F/vQySemxhxzk65VM/GboqqZ6tqEh5uCOtmQGHagPcx6bwiO
9VpszE/aV7TyL3LUu7YepXg9Ne4ouiC9hRAWRiCc5W/62khMyk3GGQ5F0Wm5wXXg
WA/NgQ0W9mURnzcCHSWvaQubarU/d2IQqLnoGs6kjEY/8DtDaE/gUJA=
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/greek/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2fY4Kh9mMZrpDYKRuY9OTJ3VV+DG/x9OsOww1SjMoBHJgMF8BAZSArRX+dODjp4bx5qbz7QwmCOq6LcvRPgy2Mj1rDJuPPLHOc5gbV/3rS50kbrDCy9s4cksEB2oAzUOgg3r/JMUMJIappd19Rwv61cnZ4R6HiccoN6l6m4cGABE343JtwRGojM/eNt0HfTyYsb2rJ8/f9aTi4SDr7B9HPd8GTs9Fr90AVI8NVq9+dTTo/QzMIh56G/wt2P9O2zXgarz1UERrIaGbCMB7b/EVBusCuRvbuisJmx31LklO8rkXzFKpTabPPvzt7KEqSCOWXDzGTJcqUcrLmtbAQGQT greek@k-node03
EOF
SCRIPT

$snode04_push_ssh_keys = <<-SCRIPT

mkdir -p /home/atam84/.ssh
chown -R atam84.atam84 /home/atam84/.ssh
cat << EOF > /home/atam84/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAs0hYQqRy7Q1PHC0UmCyhQWI093C6ukMfvUYz4EL6NrN/P/rc
ReaBs/yrC0HfpTGpWFKjBdMjs86tp9SqH2a150e0uCatEMN2uBVleYdQ+fOK6BQe
w1/kTyJIPtVsho/mOfOrQ9IMeIR1LbIkB5iTa1+VTrlKRDPXca40aMcC1+B+l2q4
p8LvZXuRNxqozRtjW/xyjl/l69teB02uwAhYxrH5lbZgIoutlBRb0F3PFd4NQdOq
8Hf8nVJcXr03KJYwg1pHMhUaRsEHwaPlS0oB2uGIVA3hrh9O5c+8Pkm2KS9DuxwI
jOfpdJ/4fHGdkf0hytfR7DK1/eEBQAj2b8ZMLwIDAQABAoH/O4bJx1bS0eKZYcGW
FPC8mfkBnSbQ2QdwgmfM0alrar4ugg/JE2x1pE1AfXxhxXe3wputhUGVmR4GirMR
yVtRCnnEh2BQFkDQKk7wYmmLeXJjrKsBi91K8PtxAWvbnNIqnxNIyjvz6BAS2BlN
3TfLutsBuCHNhtevsQ8mV6O8TfCtZf31vVQW2z3uUHv3Xm1v1X7H0LF4oGqGYlPf
imeUywdU+zbFVDOebFF8hpOFJEfjiD/UV7kt5afaFYy/cgWvixIZ022t3qHDsyl6
4zH5XCbm8d25DW1scacvpRP4GWx+b6vFxXxDKy1KCd9tooRMKIdKsHqktbsFE6F6
eDYZAoGBAOeGoB1h0hW8fj6sT9bcxfpXyL+M0cy4Hud8hPpgeU0SNwyOZJS8Yvo4
x2R9Mannv05J3PW3K8DEJIrSdasiCZWTBhz+W5AJljfCzb3KVUJKcrRw2MQGUmHz
iG3lqjWfe1bq6w7mKRaVkLoDYLSBK7iQhPkvira/P/4UzPXNOXetAoGBAMY787Ep
92Ok+vOAgbFAdx/yVf1dfi1SMXck0/oKZIOUhpirUoqEXA7W+Oi8ZTscpi73jDTy
XLt8T7Q2vYMBN+GEo4rj0x/t7Kra6rHlUoeuK8eMkHhA8qUNJ0pv6/V2cuQzFT2W
6OL416c8V8lrViHsirbzjuaU2AnF4v1SKr7LAoGBAKfQ9he2AsAMm3k0Dr7P0ZSu
smzdVmjMAGKL6BtPeDz7+fjY8WC52AhExYo6EJh1yT2m3kkgVs9nnJEfEXlUt5u6
MNEtMRMLT93lDpoFoZzmN5RAw236oxYqnnYB5Uju60jKCE0JWTjsejXKIvtTMWyb
HDc+VY42u9ygGRwFgCUVAoGBALrhE+iFzqISiz35fMp0IplsZOJZPDVPkjBm+Kt1
FrLw1z6f7E2HYB3hTYBi8vAaHxSR7IyRmxhopd8X5+rTwDGLUH4ELymfrAiaHr0c
moQsjzss6ZlkaRtuXgcPohui0ccN3U1VsjEfNHaFLaFF3kpW66Jz09jOoyf7dPUp
fACnAoGAC+14DWBpKCu3es+4oEa2s011BUMbcvZ+EW+EX1uhRvME4H2nmJV70R9U
CEKxKimhU6sdhcIQ+mtQ6jrGN6QuCDZbPDbwfSMUG2rKMltgzkeLhsX6hErbWIK4
JxtIVsJF0oH/RCVBwLiIn4Eu3UQl/eoxmA0FXLj3ZIXRiUXD1To=
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/atam84/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzSFhCpHLtDU8cLRSYLKFBYjT3cLq6Qx+9RjPgQvo2s38/+txF5oGz/KsLQd+lMalYUqMF0yOzzq2n1KofZrXnR7S4Jq0Qw3a4FWV5h1D584roFB7DX+RPIkg+1WyGj+Y586tD0gx4hHUtsiQHmJNrX5VOuUpEM9dxrjRoxwLX4H6Xarinwu9le5E3GqjNG2Nb/HKOX+Xr214HTa7ACFjGsfmVtmAii62UFFvQXc8V3g1B06rwd/ydUlxevTcoljCDWkcyFRpGwQfBo+VLSgHa4YhUDeGuH07lz7w+SbYpL0O7HAiM5+l0n/h8cZ2R/SHK19HsMrX94QFACPZvxkwv atam84@k-node04
EOF
mkdir -p /home/sam/.ssh
chown -R sam.sam /home/sam/.ssh
cat << EOF > /home/sam/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA04ODzhSOg99/JNK4jHSBVLZ4EGeOhu3srvWypT/Y2IwIFtgL
iT4me6uqaV8Vj7JFuf3JYWO6TW70pW0Y7kkyQARtM4QWj5lPHGh8yY5fNj4XluDq
sc5kYmUs36+KzrOmMDwqdsYgW17n1ypw9wFWZLq7lxqQjWTdpnwJj/MNXq61Hpby
CHhRAVHHXc8DJnTSAJa5r+0aYwA4m2dK94qDc8Rnn25MiP/R3FyLlSJH0aFYxZQr
5JiH3zZW44ENuZBZ68oxTl9Im5NhmJ9lxhiUU3Xfmk/gxNCc9f4tBFNkqpVxgvNg
G4o1TtQh2Fs/oMOyzkp+W0/hgAgqLckh8C/BeQIDAQABAoIBACwHMkaRjODygvrd
SkEid1F08iUoCUkY+a2pw1gWpELfU0e+DRiycTxJDZ4Fhu10hIMkyuiU49D+ibpt
rUTcw7MDuN+CXVfi587YCTHDixo1bp+fjfsZJVg+C0s8tT41syBTRduXfmDGrqfh
U8Z25s7s9+OKShDEsEbZhvwJ8fyFLIkVIpBErW/Uaqf/OqK3mHzspkIekORzH9Lq
A1fXjq5TF1c+Tn9lLaTy11QNQBxoPVDqewrGYg0phdpp+6weK7XYK+3d3sLcCTRt
MBqbfYNvElVHZzjKOhH7jLTUYObEPC4BPeFvcPjzW1tBUe4SGJGVro/LjOY2dYP5
116WbAECgYEA8YBfOzcn8WOYZaXl733L0b38avLVzswp9CJQvDZ0Z/Cq9Rrk47Xt
2yXud+KsEhRUvLRci4zvTyW9xACOi38u9NQClqRXKUMpEFYd2yPeyJa8v/xer+PN
GhK/JyGJv199qghEfXRvsHr2yiIfgtpMV99Md2WWMDwBIIzOzB7RCTkCgYEA4DZD
NI7l5zTnAq6HolDVOkYIxu++Gi3crh9aq/5lNpyf9xvoEWHreYs49xTlJiIGu1i3
y8eqLo/k+3MR67BOaEhif93A4GRV0v8OH4+nzCH4oW4+uIzqr+Iz02Y9K+8B9LMk
D01Xf9QfBDGMS2ezF8JAHea19r2HIvRFhbyxukECgYEAt24b5yxDqHNPY5WYiklw
MEUvnkQH5eTo0Mfnrq1lyTThhP4CcHrUySmMcX6315udqR8NU+meMu2lr2QE4Suf
DNKjjKwSkAK1A/WFA9fA9XaYsvILMWnDdVRb4Gr252auWiGhc/CmjNM489rrOEZ6
yhuPRvjgFI7fBEwvHpchivECgYA+lwdFycpmM791YTFd34DWxqw2lMCV4E2lkf0m
3Fp211xUiEbNa29nu7TITN33OjJ05DxSt8dLPkIm66WKDOqmc+aDWW05duj6gNb5
eonWE3mr3vHFZRkyxku/bOAQvqTmIYgkeWu+tIGAEzDd7/Hv5PsvHbOYUKpD2Lr7
rYRTwQKBgQCXHeshltYgNjvD+i7PYK1hWY4MmUxJ3sTE5bMaHrRnlE3M0+cf/QU2
2Ws2fHVNAg75e8cNzPMLhMwytRcI2BWqsDiqufos1c6OG0KG7D3mbZr5LTjzB/3U
rAmDVAXxXeY6MpTBXJphJI+jiXSK6lMy/8fr3RfxP2SVrLll1uedTA==
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/sam/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTg4POFI6D338k0riMdIFUtngQZ46G7eyu9bKlP9jYjAgW2AuJPiZ7q6ppXxWPskW5/clhY7pNbvSlbRjuSTJABG0zhBaPmU8caHzJjl82PheW4OqxzmRiZSzfr4rOs6YwPCp2xiBbXufXKnD3AVZkuruXGpCNZN2mfAmP8w1errUelvIIeFEBUcddzwMmdNIAlrmv7RpjADibZ0r3ioNzxGefbkyI/9HcXIuVIkfRoVjFlCvkmIffNlbjgQ25kFnryjFOX0ibk2GYn2XGGJRTdd+aT+DE0Jz1/i0EU2SqlXGC82AbijVO1CHYWz+gw7LOSn5bT+GACCotySHwL8F5 sam@k-node04
EOF
mkdir -p /home/greek/.ssh
chown -R greek.greek /home/greek/.ssh
cat << EOF > /home/greek/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAxXbkWaELrYIqCAZG18qiTyLehOQqvhELhUB2mKTEuPjENvs1
RG1hLiZLW6R4Fx4AJ//2vXMz9+R36wOFB8wCVmGEOs4QSgxxWAFpBlIsOU2buovs
yc9o2jQBudsZzzTcNeco/zRpcdpYmlNFEBLNPDn9uDWRU5sP3X01+pOlLFi0Ptr0
73ct2tScDKfU42PEIxHhCRtn8jlm+8adwS8jXp7gGY3Me1f4MfkK1O79lB8vgZpT
5nNHj9F+SHqsgj7oukUNvARJqulx28F+fFa9YoNsxwVOGXFc8z8capKEP2bvew+3
dJNZ3kZajFCyv+xabBUarCDwYgjEPz5L1DhUEwIDAQABAoIBAQCZRDLxrqKVxhZB
rD2IeOuKaRI2K7NRW4GJqANlb16SA+SomEs8FXn8jBSpyPq9VrfgVDh7y9NmcZry
ewTijGK0EXTE//R8xTOkj1OpaFaTE73wCXN9INPNqdg9Hebmgaz62bVkgJXnnQZw
onlUhINwX8KjHFD0h8LEs88V80udIs8L9mZmMB6zwCYl4K12TxeD9lJngQcn4N5F
T2w+jHDW/fg88QxHYC0HnC+Yvbs+K+LJsKD0lbbqZib6Po/27ub/U+Ac9d0k/9+k
8rZXCqe8mSgiDfMgO8iuK3E21pwyJxp1FCorwBO3jrPW3lssNIsuTpU5FOF6Z63B
i4JZPzfBAoGBAO4LVrGuM9uIzWo7V/leUzcr8f6cEsp3Ib1eLHKM6kbl1mAuf/Z3
5zQ1Wu8OmCfK1Kwqsk9F3vDrfRb4NzaPg+5PFGSRWTX34ZJshpwy/pVa77xo9y9e
ut215+KjF/0iLPxSNjB4xJGoMWYG8iMM4NCmj33RKLQBCUXx3N40JkDrAoGBANRb
85zp0smTCQ6jrpMyJOnfXHxQjUMR7i7O9CogmRcnuTl3f5E+0sJMAZ4iq9ivghvX
KS/7ebp3+g0BhnbTjcuqFWMB7yr+/44+cR6CG4Jb61qODlXlakxhSxHoxoFaXcd0
jCY3cXWoZBdhEB9brhM/r20bf2Ee51X+qfBeia95AoGAGrq9NmBoREt9PWOCgmbc
E0Lk/oEJ/yAXcssjVI2MNP/T7aLrDYLzPEKNfnB2F2nILbjxosMmwIjA2BZxJLhC
yTyp/ozvpoa6FpYHG30CZ0T5zH9A2lnZw9GMQz+rDuqKgJ6+pPy6ndx0B4/aGqN0
jxlU3XziBCxlnSwGcBENBpcCgYA2xvVDD4mA132pmg0pCPE+ppALvReDKnfe+SFA
UKJMt8FukmWEiMkCt2pfaSAcx8Du/4QvTVXsBJCqlC8kLZPQ6jGUFWalF5vCDFdP
gE4qRR2jgSsvevr9csdTelDiAvZXwbd5ECojKGmRIkdvX026x12v7jzgR4FyzDr3
ttsbOQKBgQCBIGcuU5lsn5VjROmxBmlvsejfxhdm8w2glp3v38kvVeoHSXyyg5aX
Z9OxK5WvqecZH7r0Uq5jNeP+6m2+TCrS4Bz7glc9v1K6PB1yRdDPCg0GrhK66Smw
2jFQ8CZH5No9tANxgC3zWMfiaGtaMjTgBzAtYMwG4Z4w5DPrPf0MpQ==
-----END RSA PRIVATE KEY-----

EOF

cat << EOF > /home/greek/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFduRZoQutgioIBkbXyqJPIt6E5Cq+EQuFQHaYpMS4+MQ2+zVEbWEuJktbpHgXHgAn//a9czP35HfrA4UHzAJWYYQ6zhBKDHFYAWkGUiw5TZu6i+zJz2jaNAG52xnPNNw15yj/NGlx2liaU0UQEs08Of24NZFTmw/dfTX6k6UsWLQ+2vTvdy3a1JwMp9TjY8QjEeEJG2fyOWb7xp3BLyNenuAZjcx7V/gx+QrU7v2UHy+BmlPmc0eP0X5IeqyCPui6RQ28BEmq6XHbwX58Vr1ig2zHBU4ZcVzzPxxqkoQ/Zu97D7d0k1neRlqMULK/7FpsFRqsIPBiCMQ/PkvUOFQT greek@k-node04
EOF
SCRIPT

$global_etc_hosts = <<-SCRIPT
cat << EOF > /etc/hosts
127.0.0.1      localhost
192.168.70.150     k-node01      k-node01.mylocal.cluster
192.168.70.151     k-node02      k-node02.mylocal.cluster
192.168.70.152     k-node03      k-node03.mylocal.cluster
192.168.70.153     k-node04      k-node04.mylocal.cluster
EOF
SCRIPT

$global_users = <<-SCRIPT
useradd  --home-dir /home/atam84 --create-home --shell /bin/bash atam84
passwd --expire atam84
useradd  --create-home --shell /bin/bash sam
passwd --expire sam
useradd  --create-home -c 'greek user' geek

SCRIPT
$disable_swap = <<-SCRIPT
    echo ''
    echo ' ***** D I S A B L E  S W A P'
    echo ''
    swapoff -a && sed -i '/swap/d' /etc/fstab
SCRIPT

$disable_enforce = <<-SCRIPT
    echo ''
    echo '* * * * D I S A B L E  E N F O R C E  M O D E'
    echo ''
    setenforce 0
    sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
SCRIPT

$global_provision = <<-SCRIPT
    echo ''
    echo ' * * * * G L O B A L   P R O V I S I O N'
    echo ''
    yum install -y -q vim
SCRIPT

$ssh_share_keys = <<-SCRIPT
    echo ''
    echo ' * * * * S H A R E   S S H   K E Y S'
    echo ''
cat << EOF > /home/atam84/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDlJ4veaog0pPgVnw5Q+muPMT3XBMSdBVJIso27l6RA9owbg3hW09YylfNIh73p+gBqt/jqyOdL3G7qMr+/0rnEHRY0Sv7Nh3txk62tlRbXLl8rHz3CyScLwneCHGf8zSahsKriYF571QwTWiqfxal8UjQmrohQ1SmAI1zDRtAkAugx8Kqe0Zw/OynbI/5lxmRDBOMJbOX1rq4El/45gaqcv3jWgGSU3n1MeRPR2hMEiw6WpNP91vB6Rk78y9dbxRt35yjckpQtpi5+20Ti8klA/HzzhE200QUYCIXnu1AjZF4kVw+OkxGC88J8qfBNe8LZkbiLSGzAoZItafO+Za1/ atam84@k-node01
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZDzqMeVAHg91ydoF29JZA4iF+GFJUuzD+kWAy86mx5Ktt3mWe4HsOg2Xi2NF7Zja4umJ855EOnm6QPZQRtvR/k0XrIi3w9mipEXW+gIY7Bqn5Vklh3h8R9vKddY+2XuVHUd9hnhfixwgrXPVn8KL7tCrToB9sZSD1VmtcfaRcfUX8HS7CnwobNm6y2FgYS/r7K9OQKSprEc4En9BODCty5ubx/kE3fx5b6l3IWTeqpvP92vhc/M02PKuKZijNEQeel0H+kiEMaRsCUmpkFWRQl3YFbtFFiIqL36L95wBB6gWxGnw/77ckfODnvTdbyOta9z/cR4ADoFkiveWCENXf atam84@k-node02
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLT0H0Hsu3YH1dHNwt1xfAhWi0yJam2/J44W8b2ZyEKVEkVvECumr4WbcOs+mWkFi9lkyXP0AB5EQ4iaRuAYlM9qI0Tl0qDG1re3TvDdtWaBlodFm7HA/Ub4CRoeeOJISKCs/IJrD+TtgTrifsfm4eMYk9eU78ZIkJUSo8/HXJSM0ooIPnUPOuy4NlmpunM5Bmpz/q0aenCda2FDdzt4pRtG8JEotoRensjYa0BNxjLy4Q33SaXJbhlb/QLyJMxUPjMlO9s0DyeLg6kTjULllyD3uaakPR0+Ei5Zu7idFVJdzr3NSasitfkbxxMe9jq2hurugU2xbM5cXNHFy960GJ atam84@k-node03
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzSFhCpHLtDU8cLRSYLKFBYjT3cLq6Qx+9RjPgQvo2s38/+txF5oGz/KsLQd+lMalYUqMF0yOzzq2n1KofZrXnR7S4Jq0Qw3a4FWV5h1D584roFB7DX+RPIkg+1WyGj+Y586tD0gx4hHUtsiQHmJNrX5VOuUpEM9dxrjRoxwLX4H6Xarinwu9le5E3GqjNG2Nb/HKOX+Xr214HTa7ACFjGsfmVtmAii62UFFvQXc8V3g1B06rwd/ydUlxevTcoljCDWkcyFRpGwQfBo+VLSgHa4YhUDeGuH07lz7w+SbYpL0O7HAiM5+l0n/h8cZ2R/SHK19HsMrX94QFACPZvxkwv atam84@k-node04
EOF

cat << EOF > /home/sam/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCnX22niSTrS1zd4K45VG+Qh2WHxxT0nneAVFArv67LTHn3ZFePpJk0C2zM4//1AYMq2M7i8wd76eyVjDZo6upWiqI5+Ok0TV2mUnVWuCc6QccCcQrJSBXVkum75LPYs1Vi/7YismxkOWk0ELtvflg3iaj0Dx2sbbpfQxNS/suDEkbtwqVFrF1JoXYpZMEnaLWYlBueDjHsoL32V1x80J03gPu+jdjIO0f2/ek6zkDya2G4j9rhodQG7Fz2d1VaxHaV2afsSPaBXoQw7FFOK/e09fQu9pIaxgK+dx0oNitPOSXOhMnlV3iaXW0jUrCH6ajzu34yDE/9UmH7EDvpGPD7 sam@k-node01
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjjaoLlZnfngVS3s38QcM8PakWD4kKNvkvc3sIfUd5RW/HyZwu9Nxc8MZfZxxsJMjixeEEAXfnzlccLvVkPxJRV4TkSvu9ladLqTvwwLoSTEGqCA5vmz8eZjoVx4J3reEvleld++1B5ST8E8sXuBq71cr8gLd3WSNSGQRphIFBRqgqBQybBOZ8WL/lbMcRZdg+CiYAOrvlZBNziUiBYYLGzId2EBw4WxvJSqhY8AAGZc7fjeXhvs8NgwEDej/5xSABm9JDEQwDmhswunz1EUPKMEJ/qORSpCASMo/a7/YwdSzsgJi+Gcii70Ocdq73LkTYVJ/wOxpXxl/6zsvmum13 sam@k-node02
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCl5oFBc4dn6kTkCH62OnCc37CaElRfe+2WaL0Osnga4Adw0CzIThmI3DmOWt/kgALfTvX5mLrNiT4aTdSNxqMjlDiHllA60dcRZgVNdT0dvpsQWcr8pKG2J7FnYB7aysKCmJ8tdJbaffK3W8Cr+x5N4kiJygHCMxw1pPR2YUQhbVINJV8nJ5XDDfS3K2kOunEtovQciCj7hKUaYLSYH+2haA1p4FjCSU0yPGkHzKEUjv4yVheiJGflo1a3ia3NYGra62pArTyUQhDA0rWumZugDjFftzBEYw3IyrqxGwjtbJ+bnpVJz7WqgiFHVm0/TZrfsTFL9ci/P25ebVWSdPLP sam@k-node03
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTg4POFI6D338k0riMdIFUtngQZ46G7eyu9bKlP9jYjAgW2AuJPiZ7q6ppXxWPskW5/clhY7pNbvSlbRjuSTJABG0zhBaPmU8caHzJjl82PheW4OqxzmRiZSzfr4rOs6YwPCp2xiBbXufXKnD3AVZkuruXGpCNZN2mfAmP8w1errUelvIIeFEBUcddzwMmdNIAlrmv7RpjADibZ0r3ioNzxGefbkyI/9HcXIuVIkfRoVjFlCvkmIffNlbjgQ25kFnryjFOX0ibk2GYn2XGGJRTdd+aT+DE0Jz1/i0EU2SqlXGC82AbijVO1CHYWz+gw7LOSn5bT+GACCotySHwL8F5 sam@k-node04
EOF

cat << EOF > /home/greek/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqfypAG0QHKuolz3x1Y/Bh5mYhbymohloZKNBy1+dhXSmM0fzhACAi3ZFPrNz/fxmSFsbTyWZim3ZFKMIinLgoJYRFjWTmN1irFaA88BJuvyooUJ60Uco1A2JcnXZAvOrKKU4/yOq5VLEEgpwm4M5R3n2CaAzoozzs2uIJSXtz7qdz0adcsxlMWufM427QiKWXIEh6Hyn6bYo92pFMe6ml00snEgNZVtq1fFoU7pWCgFyL7NxHcnRStHGCXTKV2olh9oKTsvCSbVyImueesteqRtC6t1AkdgwrqjtfzCtGW0vf3B24SAE5L4esaX6YcaGKPXW2GdFEjHzYGobDFptV greek@k-node01
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0QSUn6T9WceIVudoFbu2mT8Q6VnD3w2PEhyjfRO99Ii/Spv9ovJNzZUFNOnI2v4LQPERdbIKEhnhf/5t86ZQyuy+CLlc7CoSlv4d3AH2d8SFi+mduohF+zbMUfNukMrHt1SE+qDEy0VRFGacxzfR/h6RQOAzm6iotei1FGZxVeBhjoQDfhoA0J4ZeDF5cVh3iCYXT2BVt1yfU6h64Of5nkUi1hu44cmTPbgvVRg8k/OgPktIrFUbSAsmPnOL+nV2xouoXvax7kog/X53/Ct4Z97Bc09KPI2ar0LOkHzFexly5bNuZlLiUJyBxGaaftTRsuaQ5SGtYvBtB63/l28iF greek@k-node02
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2fY4Kh9mMZrpDYKRuY9OTJ3VV+DG/x9OsOww1SjMoBHJgMF8BAZSArRX+dODjp4bx5qbz7QwmCOq6LcvRPgy2Mj1rDJuPPLHOc5gbV/3rS50kbrDCy9s4cksEB2oAzUOgg3r/JMUMJIappd19Rwv61cnZ4R6HiccoN6l6m4cGABE343JtwRGojM/eNt0HfTyYsb2rJ8/f9aTi4SDr7B9HPd8GTs9Fr90AVI8NVq9+dTTo/QzMIh56G/wt2P9O2zXgarz1UERrIaGbCMB7b/EVBusCuRvbuisJmx31LklO8rkXzFKpTabPPvzt7KEqSCOWXDzGTJcqUcrLmtbAQGQT greek@k-node03
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFduRZoQutgioIBkbXyqJPIt6E5Cq+EQuFQHaYpMS4+MQ2+zVEbWEuJktbpHgXHgAn//a9czP35HfrA4UHzAJWYYQ6zhBKDHFYAWkGUiw5TZu6i+zJz2jaNAG52xnPNNw15yj/NGlx2liaU0UQEs08Of24NZFTmw/dfTX6k6UsWLQ+2vTvdy3a1JwMp9TjY8QjEeEJG2fyOWb7xp3BLyNenuAZjcx7V/gx+QrU7v2UHy+BmlPmc0eP0X5IeqyCPui6RQ28BEmq6XHbwX58Vr1ig2zHBU4ZcVzzPxxqkoQ/Zu97D7d0k1neRlqMULK/7FpsFRqsIPBiCMQ/PkvUOFQT greek@k-node04
EOF
SCRIPT


$global_install_packages = <<-SCRIPT
    echo ''
    echo ' * * * * G L O B A L   I N S T A L L   P A C K A G E S'
    echo ''
    echo '**** Install packages : python3 vim device-mapper-persistent-data lvm2 docker-ce-18.06.1.ce-3.el7 docker-ce-cli-18.06.1.ce-3.el7 containerd.io'
    yum install --nogpgcheck -q -y python3 vim device-mapper-persistent-data lvm2 docker-ce-18.06.1.ce-3.el7 docker-ce-cli-18.06.1.ce-3.el7 containerd.io
SCRIPT

$global_add_repos = <<-SCRIPT
    echo ''
    echo ' * * * * G L O B A L   A D D   R E P O S'
    echo ''
    yum install -y yum-utils
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
SCRIPT

$global_disable_services = <<-SCRIPT
    echo ''
    echo ' * * * * G L O B A L   S E R V I C E   D I S A B L E R'
    echo ''
    systemctl disable firewalld
SCRIPT

$global_enable_services = <<-SCRIPT
    echo ''
    echo ' * * * * G L O B A L   S E R V I C E   E N A B L E R'
    echo ''
    systemctl enable --now docker
SCRIPT

Vagrant.configure("2") do |config|
    config.vm.define "snode01" do |machine|
        machine.vm.box = "bento/centos-7.3"
        machine.vm.hostname = "k-node01"
        machine.vm.network "private_network", ip: "192.168.70.150"
        machine.vm.provider "virtualbox" do |vmp|
            vmp.name = "snode01"
            vmp.memory = "1024"
            vmp.cpus = "1"
        end
        machine.vm.provision "shell", inline: $global_users
        machine.vm.provision "shell", inline: $disable_swap
        machine.vm.provision "shell", inline: $disable_enforce
        machine.vm.provision "shell", inline: $global_add_repos
        machine.vm.provision "shell", inline: $global_install_packages
        machine.vm.provision "shell", inline: $global_enable_services
        machine.vm.provision "shell", inline: $global_disable_services
        machine.vm.provision "shell", inline: $global_provision
        machine.vm.provision "shell", inline: $snode01_push_ssh_keys
        machine.vm.provision "shell", inline: $ssh_share_keys
        machine.vm.provision "shell", inline: <<-SHELL
            echo ''
    echo ' * * * * V I R T U A L   M A C H I N E   L O C A L   P R O V I S I O N'
    echo ''
            yum install -y -q vim
        SHELL
    end
    config.vm.define "snode02" do |machine|
        machine.vm.box = "bento/centos-7.3"
        machine.vm.hostname = "k-node02"
        machine.vm.network "private_network", ip: "192.168.70.151"
        machine.vm.provider "virtualbox" do |vmp|
            vmp.name = "snode02"
            vmp.memory = "1024"
            vmp.cpus = "1"
        end
        machine.vm.provision "shell", inline: $global_users
        machine.vm.provision "shell", inline: $disable_swap
        machine.vm.provision "shell", inline: $disable_enforce
        machine.vm.provision "shell", inline: $global_add_repos
        machine.vm.provision "shell", inline: $global_install_packages
        machine.vm.provision "shell", inline: $global_enable_services
        machine.vm.provision "shell", inline: $global_disable_services
        machine.vm.provision "shell", inline: $global_provision
        machine.vm.provision "shell", inline: $snode02_push_ssh_keys
        machine.vm.provision "shell", inline: $ssh_share_keys
    end
    config.vm.define "snode03" do |machine|
        machine.vm.box = "bento/centos-7.3"
        machine.vm.hostname = "k-node03"
        machine.vm.network "private_network", ip: "192.168.70.152"
        machine.vm.provider "virtualbox" do |vmp|
            vmp.name = "snode03"
            vmp.memory = "1024"
            vmp.cpus = "1"
        end
        machine.vm.provision "shell", inline: $global_users
        machine.vm.provision "shell", inline: $disable_swap
        machine.vm.provision "shell", inline: $disable_enforce
        machine.vm.provision "shell", inline: $global_add_repos
        machine.vm.provision "shell", inline: $global_install_packages
        machine.vm.provision "shell", inline: $global_enable_services
        machine.vm.provision "shell", inline: $global_disable_services
        machine.vm.provision "shell", inline: $global_provision
        machine.vm.provision "shell", inline: $snode03_push_ssh_keys
        machine.vm.provision "shell", inline: $ssh_share_keys
    end
    config.vm.define "snode04" do |machine|
        machine.vm.box = "bento/centos-7.3"
        machine.vm.hostname = "k-node04"
        machine.vm.network "private_network", ip: "192.168.70.153"
        machine.vm.provider "virtualbox" do |vmp|
            vmp.name = "snode04"
            vmp.memory = "1024"
            vmp.cpus = "1"
        end
        machine.vm.provision "shell", inline: $global_users
        machine.vm.provision "shell", inline: $disable_swap
        machine.vm.provision "shell", inline: $disable_enforce
        machine.vm.provision "shell", inline: $global_add_repos
        machine.vm.provision "shell", inline: $global_install_packages
        machine.vm.provision "shell", inline: $global_enable_services
        machine.vm.provision "shell", inline: $global_disable_services
        machine.vm.provision "shell", inline: $global_provision
        machine.vm.provision "shell", inline: $snode04_push_ssh_keys
        machine.vm.provision "shell", inline: $ssh_share_keys
    end
end
