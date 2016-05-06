@echo off
set ip=192.168.1.1
set eventid=566
set wd=d:\bin\hunt566\
cd /d D:\tools\dumpevt

IF EXIST %wd%%ip%.txt rm %wd%%ip%.txt
dumpevt.exe /computer=%ip% /logfile=sec /outdir=%wd% /outfile=%wd%%ip%.txt > %wd%errors.txt

IF NOT EXIST %wd%%ip%.txt goto end
cd /d %wd%

IF EXIST %eventid%.log rm %eventid%.log
grep %eventid% %ip%.txt > %eventid%.log
IF NOT EXIST %eventid%.log goto end

IF EXIST user.log rm user.log
gawk -F "," "{print $8}" %eventid%.log | gawk -F "\\" "{print $2}" > user.log
IF NOT EXIST user.log goto end

cat user.log
for /f "tokens=*" %%G in ('tail -1 user.log') do (
echo %%G

IF EXIST pc.log rm pc.log
grep %%G table.txt | gawk -F " " "{print $2}" > pc.log
IF NOT EXIST pc.log goto end

for /f "tokens=*" %%F in ('tail -1 pc.log') do (
echo %%F
hunter.cmd %%F
)

)

:end

rem cd /d %wd%

del %wd%\*.tmp

rem dumpevt.exe /computer=%ip% /logfile=sec /outdir=%wd% /outfile=%wd%%ip%.txt /all > %wd%errors.txt
