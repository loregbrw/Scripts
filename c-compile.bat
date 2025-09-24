@echo off

for %%* in (.) do set EXE_NAME=%%~n*

set FILES=

setlocal enabledelayedexpansion

if "%~1" == "" (
	for /R %%f in (*.c) do (
		set FILES=!FILES! "%%f"
	)
) else (
	set FILES="%*"
)
gcc !FILES! -o "%EXE_NAME%.exe"

if %ERRORLEVEL%==0 (
	echo ^> Compiled %FILES% in: %EXE_NAME%.exe
)
endlocal
