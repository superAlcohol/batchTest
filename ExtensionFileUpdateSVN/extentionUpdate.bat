@ECHO OFF

SET SVN_URL=%~1
echo %SVN_URL%
SetLocal EnableDelayedExpansion

SET SVN_ROOT=%SVN_URL%
SET EXTENSIONS=.apk .aab
SET ROOT_DIR=%CD%

ECHO Listing repository...
svn -R ls %SVN_ROOT% > _files-all.txt

REM filter list for specified extensions
FOR %%H IN (%EXTENSIONS%) DO (
    TYPE _files-all.txt | FINDSTR /I /R "%%H$" >> _files-selected.txt
)

REM initial checkout in empty mode
svn co %SVN_ROOT% --depth empty .

FOR /F "tokens=*" %%I IN (_files-selected.txt) DO (
    REM "escape" path elements by wrapping them into double quotes
    SET TMP_PATH=%%I
    SET TMP_PATH="!TMP_PATH:/=" "!"
    ECHO Fetching %%I
    REM iterate over path elements
    FOR %%J IN (!TMP_PATH!) DO (
        REM "unescape" each path element again
        SET PATH_ELEM=%%J
        SET PATH_ELEM=!PATH_ELEM:~1,-1!
        REM if we don't have this element, fetch it from repository
        IF NOT EXIST "!PATH_ELEM!" (
            svn up %%J --depth empty 2>&1 > nul
        )
        REM if the element is a directory, enter it
        IF EXIST %%~sJ\NUL CD %%J
    )
    CD !ROOT_DIR!
)

REM clean up temporary files
DEL _files-all.txt _files-selected.txt