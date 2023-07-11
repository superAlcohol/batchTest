@echo off
for /f "tokens=1* delims= " %%i in ('svn status %*') do (
	if "%%i"=="!" (
		svn delete %%j
	)
	if "%%i"=="!M" (
		svn revert %%j
	)
	if "%%i"=="?" (
		svn add %%j
	)
)