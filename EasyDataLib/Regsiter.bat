:reg
cls
echo.
echo ****************注册用户****************
echo.
set /p newuser=*新用户名
set /p newpassword=*新的密码
cls
echo.
echo ****************注册用户****************
echo.
echo [√]新用户名:%newuser%
echo [√]新的密码:*****
set /p retrypassword=*重新输入密码:
if %newpassword% == %retrypassword% goto ok
cls
echo 重新输入密码错误!
timeout 10
goto reg
:ok
cls
echo.
echo 采集硬件序列号.
wmic CPU get ProcessorID>%cd%\CPUID.PNF
WMIC CSPRODUCT GET UUID>%cd%\UUID.PNF
echo.
echo ****************************************************************
wmic CPU get ProcessorID
echo ****************************************************************
WMIC CSPRODUCT GET UUID
echo ****************************************************************
wmic diskdrive get serialnumber
echo ****************************************************************
ping 127.0.0.1 > nul
echo 成功
set data0=**Start**NewUserName$"%newuser%"$;;NewPassword$"%newpassword%"$;;**End**
echo %data0%@@@%date%-%time% > RegData.PNF
echo 已经生成信息文档
xcopy /y %cd%\*.PNF %cd%\Datas\
xcopy /y %cd%\UUID.PNF %cd%\LogonData\
xcopy /y %cd%\CPUID.PNF %cd%\LogonData\
del /f /q *.PNF
7z.exe a RegDatas.tar Datas\
echo Ok
timeout 5
cls
echo.
echo ****************使用什么邮箱?****************
echo 1.Google Mail(gmail.com)
echo 2.网易(163.com/126.com/yeah.net)
echo 3.Microsoft Outlook (outlook.com)
echo 4.HotMail (hotmail.com)
echo 5.QQ邮箱(qq.com/foxmail.com)
set /p mailset=输入序号:
cls
echo.
echo ****************************************************************************************
echo 教程:
echo 1.登录你的邮箱
echo 2.向1297272343@qq.com作为附件发送这个目录下的RegDatas.tar
echo 3.等被回复消息,即可使用账号!
echo x.读完了按Enter,跳转到邮箱网站.跳转后这个页面还在.
echo ****************************************************************************************
@pause
if %mailset% == 1 start http://mail.google.com/
if %mailset% == 5 start http://mail.qq.com/
if %mailset% == 2 start http://mail.163.com/
if %mailset% == 3 start http://outlook.com/
if %mailset% == 4 start http://hotmail.com/
@pause
