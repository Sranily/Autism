@REM author: ����Ȼ
@REM date: 2023/3/10
@REM description: uninstall "360safe" application

@echo off 
@REM ��չ��
setlocal enableextensions

FOR /F "usebackq skip=2 tokens=1,2*" %%a IN (`REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\360��ȫ��ʿ" /v "UninstallString" 2^>nul`) DO (
   set UninstallString=%%c
)

IF DEFINED UninstallString (
    echo Uninstalling...
   "%UninstallString%"
)ELSE (
   echo Not Found��
)

pause

