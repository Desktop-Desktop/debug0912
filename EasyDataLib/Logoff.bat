cls
title 登出
echo.
echo 登出账号:(%userinfo%)
echo y确定    n取消
echo.
set /p logout=选择(y/n)
if %logout% == y goto LOGOUT
goto End
:LOGOUT
del /f /q %cd%\LogonData\UserName.OcX
del /f /s /q %cd%\LogonData\datas.tar
del /f /s /q %cd%\LogonData\password.tar
set userinfo=已登出
:End
cls