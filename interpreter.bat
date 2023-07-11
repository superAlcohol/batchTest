@echo off

rem 배치파일은 인터프린터 방식으로 실행중에 변경하게되면 라인 실시간 적용되어 주의가 필요함
echo a
echo.| time | find /v "now"
pause
echo |time| find  /v "now"
echo c

pause
