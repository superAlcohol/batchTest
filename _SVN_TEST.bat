@echo off

SET LOG_FILE=_SVN_TEST.log

REM delete log file
DEL /Q %LOG_FILE%
echo --Modify files Use Copy filename -->>%LOG_FILE%

for /f "tokens=1* delims= " %%i in ('svn status "*"') do (
	if "%%i"=="!" (
		svn delete %%j
	)
	if "%%i"=="?" (
		svn add %%j
	)
)

svn commit --non-interactive -m "%LOG_MESSAGE%" "%COMMIT_PATH%"

pause