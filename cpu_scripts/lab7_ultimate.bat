@echo off
title Lab7
echo ^> powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 > "%TEMP%\lab7_dup.txt"
type "%TEMP%\lab7_dup.txt"
for /f "tokens=4" %%g in (%TEMP%\lab7_dup.txt) do set NEWGUID=%%g
echo.
echo ^> powercfg /list
powercfg /list
echo.
echo ^> powercfg /setactive %NEWGUID%
powercfg /setactive %NEWGUID%
echo.
echo ^> powercfg /list
powercfg /list
echo.
pause
echo ^> powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /list
pause
