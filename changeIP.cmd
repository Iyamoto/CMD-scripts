chcp 1251 
rem netsh interface ip set address name="Подключение по локальной сети" source=dhcp
netsh interface ip set address name="Подключение по локальной сети" source=static addr=192.168.1.1 mask=255.255.255.0 gateway=192.168.1.2 gwmetric=0
chcp 866