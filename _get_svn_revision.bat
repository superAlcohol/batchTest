@echo off

for /f "delims=: tokens=1,*" %%a in ('svn info .') do (
  if "%%a"=="URL" (
    set SVN_URL=%%b
  )
)

set SVN_URL=%SVN_URL:~1%

echo -- test --
echo SVN_URL is %SVN_URL%

svn update
echo ---svn update---

for /f "delims=: tokens=1,*" %%a in ('svn info .') do (
  if "%%a"=="URL" (
	set DATA_URL=%%b
  )
  
  if "%%a"=="Last Changed Rev" (
    set CURRENT_REVISION=%%b
  )
)

echo DATA_URL is %DATA_URL%

echo CURRENT_REVISION is %CURRENT_REVISION%

pause 