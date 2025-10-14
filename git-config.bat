@echo off

for /f "delims=" %%i in ('git config --get user.name') do set USERNAME=%%i
for /f "delims=" %%i in ('git config --get user.email') do set USEREMAIL=%%i

echo ^> git user.name "%USERNAME%"
echo ^> git user.email "%USEREMAIL%"
