@echo off
cls
title Logon
call ReadSetting.bat
echo.
echo ****************************************************************
echo.
echo 欢迎登录!
echo 账号:(%userinfo%)
echo.
echo 1.登录 Logon
echo 2.注册 Regsiter
echo 3.退出登录
echo 4.退出程序
echo 5.高级
echo 选择一个选项 (1/2/3/4/5)
echo.
echo ****************************************************************
set /p next=Type=
if %next% == 1 call Logon.bat
if %next% == 2 call Regsiter.bat
if %next% == 3 call Logoff.bat
if %next% == 5 call Setting.bat
if %next% == 4 exit
%0