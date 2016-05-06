@echo off
chcp 1251 >nul 
if %1 == server goto End
ping %1 -l 1 -n 1 | find "TTL" > nul
if %ERRORLEVEL% == 1 goto End
echo %date%-%time% shuting down %1 >> shutlog.txt
shutdown -s -f -m \\%1 -t 20
:End
