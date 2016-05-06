@echo off
for /R \\server\w\ %%i in (*.jpg,*.zip,*.rar,*.avi,*.mp3,*.mpg,*.wav,*.wma,*.exe,*.mpeg) do echo %%i >> list.log
date /t > date.txt
for /F "tokens=2"  %%j in (date.txt) do ren list.log l-%%j.log
del list.log

