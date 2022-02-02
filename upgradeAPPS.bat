@echo off

echo # Check internet connection...

ping -n 3 1.1.1.1 > nul

if %ERRORLEVEL% == 0 (
	echo # OK!
	echo.
	choco upgrade all -y
) ELSE (
	echo # No connection...
	echo # aborting...
)

exit