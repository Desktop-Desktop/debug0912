cls
title �ǳ�
echo.
echo �ǳ��˺�:(%userinfo%)
echo yȷ��    nȡ��
echo.
set /p logout=ѡ��(y/n)
if %logout% == y goto LOGOUT
goto End
:LOGOUT
del /f /q %cd%\LogonData\UserName.OcX
del /f /s /q %cd%\LogonData\datas.tar
del /f /s /q %cd%\LogonData\password.tar
set userinfo=�ѵǳ�
:End
cls