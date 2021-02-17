cls
echo.
echo ****************************************************************
echo.
echo 1.清除存储在电脑中的注册信息
echo 2.清除存储在电脑中的UUID和CPUID
echo 3.N/A 
echo 4.N/A
echo.
echo ****************************************************************
set /p sett=选择一项
if %sett% == 1 del /q /f %cd%\Datas\RegData.PNF
if %sett% == 2 goto delpnf
goto end
:delpnf
del /q /f %cd%\Datas\UUID.PNF
del /q /f%cd%\Datas\CPUID.PNF
:end