@echo off

if "%~1" == "" (
	echo ^> Missing program.
	exit
)

echo ^> Running...

C:/Users/fal6ct/AppData/Local/Programs/Python/Python313/python.exe "%1"