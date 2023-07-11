@echo off

for /F "tokens=1* delims= " %%i in ('svn --version') do (
	if "%%i" == "svn," ( 
		SET VERSION=%%j
	)	
)
echo %VERSION%

echo %VERSION% | findstr "1.13" 1>nul

if errorlevel 1 (
	echo not found
) else (
	echo found
)
rem if "x%VERSION:1.13=%"=="x%VERSION%" (
rem  	echo version is 1.13
rem )

pause
