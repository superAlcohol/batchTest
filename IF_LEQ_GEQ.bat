@echo off

rem 	equ	equal (동등)
rem	neq	not equal (부정)
rem 	gtr	greater (초과)
rem 	geq	greater than equal (이상)
rem 	leq	less than equal (이하)
rem 	lss	less (미만)
rem 	==	문자 비교에 만 사용

SET OLDBUILDNUM=1
SET BUILD_NUM=2
if %OLDBUILDNUM% LEQ %BUILD_NUM% (
	echo LEQ 
)

if %OLDBUILDNUM% GEQ %BUILD_NUM% (
	echo GEQ 
)

pause 