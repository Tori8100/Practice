@echo off

REM IP address could also be added as a possible environment variable
echo open 127.0.0.1>ftp-temp.txt

REM Read environment variables (username and password)
echo %yoosrnaym%>>ftp-temp.txt
echo %password%>>ftp-temp.txt

REM Copy the automated script into the new temporary file, add together to keep header (amending)
copy ftp-temp.txt+ftp-script.txt ftp-temp.txt

REM to add a new line character in case the file does not end with one
echo, >>ftp-temp.txt
echo quit>>ftp-temp.txt

REM Call the ftp command with the new file
REM ftp -s:ftp.txt

REM Pausing to check that script worked, unnecessary for automation
pause

REM Delete the new file to erase the hardcoded username and password
del /f ftp-temp.txt
