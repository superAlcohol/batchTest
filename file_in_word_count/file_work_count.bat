@echo off
echo.
echo **** Find File List **** 
echo.

SET SOURCE=patch_file_list.json
SET WORD=test

rem �ٸ��� Ư���ܾ ã�� ī��Ʈ�� �÷��ش�.
find /c /i "%WORD%" < "%SOURCE%"

pause