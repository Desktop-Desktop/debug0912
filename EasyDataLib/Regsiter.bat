:reg
cls
echo.
echo ****************ע���û�****************
echo.
set /p newuser=*���û���
set /p newpassword=*�µ�����
cls
echo.
echo ****************ע���û�****************
echo.
echo [��]���û���:%newuser%
echo [��]�µ�����:*****
set /p retrypassword=*������������:
if %newpassword% == %retrypassword% goto ok
cls
echo ���������������!
timeout 10
goto reg
:ok
cls
echo.
echo �ɼ�Ӳ�����к�.
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
echo �ɹ�
set data0=**Start**NewUserName$"%newuser%"$;;NewPassword$"%newpassword%"$;;**End**
echo %data0%@@@%date%-%time% > RegData.PNF
echo �Ѿ�������Ϣ�ĵ�
xcopy /y %cd%\*.PNF %cd%\Datas\
xcopy /y %cd%\UUID.PNF %cd%\LogonData\
xcopy /y %cd%\CPUID.PNF %cd%\LogonData\
del /f /q *.PNF
7z.exe a RegDatas.tar Datas\
echo Ok
timeout 5
cls
echo.
echo ****************ʹ��ʲô����?****************
echo 1.Google Mail(gmail.com)
echo 2.����(163.com/126.com/yeah.net)
echo 3.Microsoft Outlook (outlook.com)
echo 4.HotMail (hotmail.com)
echo 5.QQ����(qq.com/foxmail.com)
set /p mailset=�������:
cls
echo.
echo ****************************************************************************************
echo �̳�:
echo 1.��¼�������
echo 2.��1297272343@qq.com��Ϊ�����������Ŀ¼�µ�RegDatas.tar
echo 3.�ȱ��ظ���Ϣ,����ʹ���˺�!
echo x.�����˰�Enter,��ת��������վ.��ת�����ҳ�滹��.
echo ****************************************************************************************
@pause
if %mailset% == 1 start http://mail.google.com/
if %mailset% == 5 start http://mail.qq.com/
if %mailset% == 2 start http://mail.163.com/
if %mailset% == 3 start http://outlook.com/
if %mailset% == 4 start http://hotmail.com/
@pause
