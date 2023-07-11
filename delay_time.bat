
@echo off    

echo %time%
for /L %%a in (1,1,10) do (

	timeout 1 /nobreak > nul
	echo sec : %%a
)

echo %time%

pause 