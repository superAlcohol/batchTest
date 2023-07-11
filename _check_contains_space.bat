@echo off

SET SOURCE=%~1
@echo path : %SOURCE%

SET FILE_COUNT=0
for %%i in ("%SOURCE%\*") do (
	for /f "tokens=2" %%a in ("%%~nxi") do (
		for /f "tokens=1* delims= " %%j in ('svn status "%%~nxi"') do (
			if "%%j"=="A" (
				echo "%%j"
				echo adding contains space file : %%~nxi 
				SET /a FILE_COUNT +=1
			)
		)
	)
)

@echo contains space file count : %FILE_COUNT%

REM if %FILE_COUNT% GTR 0 ( 
	REM exit /b 1
REM )

