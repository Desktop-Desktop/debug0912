@echo off
cls
title Logon
call ReadSetting.bat
echo.
echo ****************************************************************
echo.
echo ��ӭ��¼!
echo �˺�:(%userinfo%)
echo.
echo 1.��¼ Logon
echo 2.ע�� Regsiter
echo 3.�˳���¼
echo 4.�˳�����
echo 5.�߼�
echo ѡ��һ��ѡ�� (1/2/3/4/5)
echo.
echo ****************************************************************
set /p next=Type=
if %next% == 1 call Logon.bat
if %next% == 2 call Regsiter.bat
if %next% == 3 call Logoff.bat
if %next% == 5 call Setting.bat
if %next% == 4 exit
%0