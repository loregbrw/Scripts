@echo off
setlocal

set CMD=git config

if "%1"=="-g" set CMD=git config --global
if "%1"=="--global" set CMD=git config --global

%CMD% user.name "loregbrw"
%CMD% user.email "loregobara@gmail.com"

echo ^> %CMD% user.name "loregbrw"
echo ^> %CMD% user.email "loregobara@gmail.com"

endlocal
