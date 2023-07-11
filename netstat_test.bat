@echo off
	
	rem E:\TEMP\batch  이위치에서만 timeout 을 실행하면 실패함 이유
	rem timeout.bat 배치파일이 있을경우 문제 
	rem TOTALTIME 시간 ADDRESS 검사할 ip 또는 포트 검사해서 찾는 배치파일 
	

	SET TOTALTIME=600
	SET ADDRESS="103.225"
	rem SET ADDRESS="78:443"
	@echo start %time%
	@echo start %time% > netstat_log.txt
	
	@echo check netatat including %ADDRESS%
	@echo check netatat including %ADDRESS% >> netstat_log.txt
	
	@echo total time : %TOTALTIME%sec
	@echo total time : %TOTALTIME%sec >> netstat_log.txt

	for /L %%i IN ( 1, 1, %TOTALTIME% ) DO (
		@echo %%i sec
		@echo %%i sec >> netstat_log.txt
		timeout 1 /nobreak > nul
		netstat -ano | find %ADDRESS%
		netstat -ano | find %ADDRESS% >> netstat_log.txt
	)
	
	@echo end %time%
	@echo end %time% >> netstat_log.txt

pause
