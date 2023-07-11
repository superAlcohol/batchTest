@echo off

rem ----------------------- fail -------------------------------

rem \/;*?<>| 등은 폴더가 안만들어짐 사용해서는 안되는 문자

rem call E:\BATCH\PATH_TEST\test(Path)\echo.bat

rem call E:\BATCH\PATH_TEST\tesh한글\echo.bat

rem call E:\BATCH\PATH_TEST\test%percent\echo.bat

rem call E:\BATCH\PATH_TEST\test^Circumflex\echo.bat

rem call E:\BATCH\PATH_TEST\test&Ampersand\echo.bat

rem call E:\BATCH\PATH_TEST\test=Equall\echo.bat

call E:\BATCH\PATH_TEST\test,Comma\echo.bat


rem ----------------------- success -------------------------------

rem call E:\BATCH\PATH_TEST\test_underbar\echo.bat

rem call E:\BATCH\PATH_TEST\test.dot\echo.bat

rem call E:\BATCH\PATH_TEST\test~tilde\echo.bat

rem call E:\BATCH\PATH_TEST\test@at\echo.bat

rem call E:\BATCH\PATH_TEST\test#sharp\echo.bat

rem call E:\BATCH\PATH_TEST\test-Dash\echo.bat

rem call E:\BATCH\PATH_TEST\test+plus\echo.bat

rem call E:\BATCH\PATH_TEST\test{brace}\echo.bat

rem call E:\BATCH\PATH_TEST\test[bracket]\echo.bat

rem call E:\BATCH\PATH_TEST\test'Apostrophe\echo.bat

pause
