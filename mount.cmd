chcp 1251
ping -n 20 127.0.0.1 > %temp%\ping.txt
net use w: "\\192.168.1.1\w" /USER:domen\user pass /PERSISTENT:YES