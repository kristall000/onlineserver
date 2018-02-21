@echo off
color 1F
set ForgeVersion="1.12.2-forge1.12.2-14.23.2.2618"
set FileName="forge-1.12.2-14.23.2.2618-universal"
title ��⠭���� %ForgeVersion% (�� ����뢠� ���� �� ���� ��⠭����!)
:start
If Not Exist "versions\%ForgeVersion%" (
		echo �� ����뢠� ���� �� ���� ��⠭����!
		echo � 㤠�� ���㦭� ���, ����� ��⠭���� ���������!
		echo .
		echo ��� ��⠭���� ������ ����� ����窠 "Install client",
		echo � ᭨�� ������ ���� 㪠��� ⠪�� ���� � �����:
		echo %CD%
		:err
	if Exist %FileName%.jar (call %FileName%.jar) else (
		echo .
		echo ���।�������� �訡��! ��⠭��騪 Forge �� ������!! ������?
		pause
		del /q /f %FileName%.cmd
		exit
	)
	If Not Exist "versions\%ForgeVersion%" (
		echo .
		echo Forge �� ��⠭�����!
		echo ����� ���� %ForgeVersion% �� �������!
		echo ����� ��⠭����...
		color 4F
		goto err
	)
	echo .
	echo �ᯥ譠� ��⠭���� Forge. ��� ����᪠ ���� � ����� �롥�� ����� %ForgeVersion%
	del /q /f %FileName%.jar
	del /q /f %FileName%.cmd
	if %errorlevel% == 0 (echo  ��� �ᯥ譮 ��饭!) else (echo  �����㦥�� �訡��! �������� Forge �� ��⠭����� ��� �� 㤠���� ������ ���.)
	pause
	exit
) Else (
	rmdir  /s /q "versions\%ForgeVersion%"
	goto start
)
