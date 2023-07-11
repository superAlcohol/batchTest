@echo off
@echo svn info

for /F "tokens=1* delims= " %%i in ('svn info deploy') do (
	if "%%i" == "Revision:" ( 
		call SET REVISION=%%j
	)	
)
echo REVISION - '%REVISION%'
pause