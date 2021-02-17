
title 登录账号
:logon
cls
echo.
echo ****************登录****************
echo.
set /p user=*输入账号:
set /p password=*输入密码:
echo.
cls
echo.
echo ****************登录****************
echo.
echo 账号:%user%
echo 密码:*****
echo.
echo ************************************
echo.
echo.
echo ****************验证****************
echo.
set num1=%random%
set num2=%random%
set num3=%num1%NzTrQpOaCd%num2%
echo 请输入下面的数字和数字中间的英文部分,区分大小写.
echo.
echo AjGhWeQvRe%num3%NmZpLaQiFs
echo.
set /p numpt=输入验证码:
if %numpt% == %num3% goto done
goto notfound
:notfound
echo -(x)验证码错误,即将返回(x)-
ping 127.0.0.1 > nul
cls
goto logon
:done
cls
DataGet.eXe http://lib.debug0912.vaiwan.com/Data/%user%/password.tar
DataGet.eXe http://lib.debug0912.vaiwan.com/Data/%user%/datas.tar
title 登陆账号
cls
echo.
echo 加载数据和UUIDs
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
echo -(x)账号信息不存在!即将返回(x)-
echo.
echo ****************登录信息****************
echo.
echo [x]用户:%user%
echo [x]密码:*****
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
echo -(x)密码错误,即将返回(x)-
echo.
echo ****************登录信息****************
echo.
echo [√]用户:%user%
echo [x]密码:*****
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
echo %user%@登录时间%date%-%time% > UserName.OcX
cd ..
cls
echo.
echo (√) 完成!
echo.
echo ****************登录信息****************
echo.
echo [√]用户:%user%
echo [√]密码:*****
echo.
echo ****************************************
@pause
start Program.bat
exit