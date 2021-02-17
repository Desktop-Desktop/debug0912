cd LogonData
if exist "password.tar" goto canload
set userinfo=ÒÑµÇ³ö
goto End
:canload
set /p userinfo=<UserName.OcX
:End
cd ..
cls
