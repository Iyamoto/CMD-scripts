@echo off
pslist \\server | find "BewardRecordService" | gawk "{print $2}" > pid.txt
for /f %%j in (pid.txt) do pskill \\server %%j 