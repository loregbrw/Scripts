@echo off
setlocal

set CMD=git config

if "%1"=="-g" set CMD=git config --global
if "%1"=="--global" set CMD=git config --global

for /f "delims=" %%i in ('%CMD% --get user.name 2^>nul') do set "USERNAME=%%i"
for /f "delims=" %%i in ('%CMD% --get user.email 2^>nul') do set "USEREMAIL=%%i"

echo ^> %CMD% --get user.name "%USERNAME%"
echo ^> %CMD% --get user.email "%USEREMAIL%"

endlocal