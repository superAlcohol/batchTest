
@echo off
SET LOGPATH=F:\TEMP\batch
SET SRCPATH=F:\TEMP\
SET DSTPATH=F:\

@rem :runrobocopy 함수 호출 
call :runrobocopy batch batchCopyTest
pause
exit /b

:runrobocopy
SET TARGET=%~1 
SET TARGET2=%~2
echo robocopy "%SRCPATH%%TARGET%" "%DSTPATH%%TARGET2%" /R:1 /MIR /MT:100 /LOG:"%LOGPATH%\%TARGET%.txt"
robocopy "%SRCPATH%%TARGET%" "%DSTPATH%%TARGET2%" /R:1 /MIR /MT:100 /LOG:"%LOGPATH%\%TARGET%.txt"
exit /b
