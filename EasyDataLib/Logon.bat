
title ��¼�˺�
:logon
cls
echo.
echo ****************��¼****************
echo.
set /p user=*�����˺�:
set /p password=*��������:
echo.
cls
echo.
echo ****************��¼****************
echo.
echo �˺�:%user%
echo ����:*****
echo.
echo ************************************
echo.
echo.
echo ****************��֤****************
echo.
set num1=%random%
set num2=%random%
set num3=%num1%NzTrQpOaCd%num2%
echo ��������������ֺ������м��Ӣ�Ĳ���,���ִ�Сд.
echo.
echo AjGhWeQvRe%num3%NmZpLaQiFs
echo.
set /p numpt=������֤��:
if %numpt% == %num3% goto done
goto notfound
:notfound
echo -(x)��֤�����,��������(x)-
ping 127.0.0.1 > nul
cls
goto logon
:done
cls
DataGet.eXe http://lib.debug0912.vaiwan.com/Data/%user%/password.tar
DataGet.eXe http://lib.debug0912.vaiwan.com/Data/%user%/datas.tar
title ��½�˺�
cls
echo.
echo �������ݺ�UUIDs
wmic CPU get ProcessorID>%cd%\Datas\CPUID.PNF
WMIC CSPRODUCT GET UUID>%cd%\Datas\UUID.PNF
echo.
echo ****************************************************************
wmic CPU get ProcessorID
echo ****************************************************************
WMIC CSPRODUCT GET UUID
echo ****************************************************************
wmic diskdrive get serialnumber
echo ****************************************************************
ping 127.0.0.1 > nul
if exist "password.tar" goto ok
echo.
echo -(x)�˺���Ϣ������!��������(x)-
echo.
echo ****************��¼��Ϣ****************
echo.
echo [x]�û�:%user%
echo [x]����:*****
echo.
echo ****************************************
timeout 15
goto logon
:ok
set /P psw=<password.tar
if %password% == %psw% goto logondone
goto Errorpsw
:Errorpsw
del /q /f password.tar
del /q /f datas.tar
echo.
echo -(x)�������,��������(x)-
echo.
echo ****************��¼��Ϣ****************
echo.
echo [��]�û�:%user%
echo [x]����:*****
echo.
echo ****************************************
timeout 15
goto logon
:logondone
set savepsw=<password.tar
xcopy /y %cd%\datas.tar %cd%\LogonData\
xcopy /y %cd%\password.tar %cd%\LogonData\
del /q /f password.tar
del /q /f datas.tar
cd LogonData
echo %user%@��¼ʱ��%date%-%time% > UserName.OcX
cd ..
cls
echo.
echo (��) ���!
echo.
echo ****************��¼��Ϣ****************
echo.
echo [��]�û�:%user%
echo [��]����:*****
echo.
echo ****************************************
@pause
start Program.bat
exit