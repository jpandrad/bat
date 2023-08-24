@echo off
@Rem make var nowDay
FOR /F "TOKENS=1* DELIMS=/" %%A IN ('date/t') DO SET nowDay=%%A
FORFILES /S /p C:\Windows\System32\winevt\Logs /d -15 /M Archive*.evtx /c "CMD /C DEL @FILE /Q"
