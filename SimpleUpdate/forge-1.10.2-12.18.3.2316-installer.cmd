@echo off
color 1F
title ��⠭���� Forge (�� ����뢠� ���� �� ���� ��⠭����!)
:start
	If Not Exist "versions\1.10.2-forge1.10.2-12.18.3.2316" (
	echo �� ����뢠� ���� �� ���� ��⠭����!
	echo � 㤠�� ���㦭� ���, ����� ��⠭���� ���������!
	echo .
	echo ��� ��⠭���� ������ ����� ����窠 "Install client",
	echo � ᭨�� ������ ���� 㪠��� ⠪�� ���� � �����:
	echo %CD%
	:err
	if Exist forge-1.10.2-12.18.3.2316-installer.jar (call forge-1.10.2-12.18.3.2316-installer.jar) else (
		echo .
		echo ���।�������� �訡��! ��⠭��騪 Forge �� ������!! ������?
		pause
		del /q /f forge-1.10.2-12.18.3.2316-installer.cmd
		exit
	)
	If Not Exist "versions\1.10.2-forge1.10.2-12.18.3.2316" (
		echo .
		echo Forge �� ��⠭�����!
		echo ����� ���� 1.10.2-forge1.10.2-12.18.3.2316 �� �������!
		echo ����� ��⠭����...
		color 4F
		goto err
	)
	echo .
	echo �ᯥ譠� ��⠭���� Forge. ��� ����᪠ ���� �롥�� � TLauncher ����� 1.10.2-forge1.10.2-12.18.3.2316
	del /q /f forge-1.10.2-12.18.3.2316-installer.jar
	del /q /f forge-1.10.2-12.18.3.2316-installer.cmd
	if %errorlevel% == 0 (echo  ��� �ᯥ譮 ��饭!) else (echo  �����㦥�� �訡��! �������� Forge �� ��⠭����� ��� �� 㤠���� ������ ���.)
	pause
	exit
) Else (
	rmdir  /s /q "versions\1.10.2-forge1.10.2-12.18.3.2316"
	goto start
)
