@echo off
echo.
echo **** Find File List **** 
echo.

SET SOURCE=patch_file_list.json
SET WORD=test

rem 줄마다 특정단어를 찾아 카운트를 올려준다.
find /c /i "%WORD%" < "%SOURCE%"

pause