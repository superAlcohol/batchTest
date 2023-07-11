setlocal EnableDelayedExpansion

 set VAR=before
 if "%VAR%" == "before" (
     set VAR=after
     @echo !VAR!
 )
  
@echo %VAR%

pause

