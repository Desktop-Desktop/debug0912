cls
echo.
echo ****************************************************************
echo.
echo 1.����洢�ڵ����е�ע����Ϣ
echo 2.����洢�ڵ����е�UUID��CPUID
echo 3.N/A 
echo 4.N/A
echo.
echo ****************************************************************
set /p sett=ѡ��һ��
if %sett% == 1 del /q /f %cd%\Datas\RegData.PNF
if %sett% == 2 goto delpnf
goto end
:delpnf
del /q /f %cd%\Datas\UUID.PNF
del /q /f%cd%\Datas\CPUID.PNF
:end