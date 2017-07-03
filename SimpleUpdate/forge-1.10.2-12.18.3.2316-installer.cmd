@echo off
color 1F
title Установка Forge (Не закрывай меня до конца установки!)
:start
	If Not Exist "versions\1.10.2-forge1.10.2-12.18.3.2316" (
	echo Не закрывай меня до конца установки!
	echo Я удалю ненужный кэш, когда установка завершится!
	echo .
	echo Для установки должна стоять галочка "Install client",
	echo а снизу должен быть указан такой адрес к папке:
	echo %CD%
	:err
	if Exist forge-1.10.2-12.18.3.2316-installer.jar (call forge-1.10.2-12.18.3.2316-installer.jar) else (
		msg * Непредвиденная ошибка! Установщик Forge не найден!! ПОЧЕМУ?
		del /q /f forge-1.10.2-12.18.3.2316-installer.cmd
		exit
	)
	If Not Exist "versions\1.10.2-forge1.10.2-12.18.3.2316" (
		echo .
		echo Forge не установлен!
		echo Версия игры 1.10.2-forge1.10.2-12.18.3.2316 не найдена!
		echo Повтор установки...
		color 1C
		goto err
	)
	msg * Успешная установка Forge. Для запуска игры выберите в TLauncher версию 1.10.2-forge1.10.2-12.18.3.2316
	del /q /f forge-1.10.2-12.18.3.2316-installer.jar
	del /q /f forge-1.10.2-12.18.3.2316-installer.cmd
	if %errorlevel% == 0 (msg * Кэш успешно очищен!) else (msg * Обнаружены ошибки! Возможно Forge не установлен или не удалось очистить кэш.)
	exit
) Else (
	rmdir  /s /q "versions\1.10.2-forge1.10.2-12.18.3.2316"
	goto start
)
