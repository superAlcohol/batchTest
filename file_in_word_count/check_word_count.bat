@echo off

SET SOURCE=check_word.json
SET WORD=test

for /F "tokens=1* delims= " %%i in (%SOURCE%) do (
    echo "%%~i" | find "%WORD%" > nul
	if errorlevel 1 (echo notfound) else (echo found)
)

pause