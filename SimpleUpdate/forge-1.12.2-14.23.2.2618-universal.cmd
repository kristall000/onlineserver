@echo off
color 1F
set ForgeVersion="1.12.2-forge1.12.2-14.23.2.2618"
set FileName="forge-1.12.2-14.23.2.2618-universal"
title Установка %ForgeVersion% (Не закрывай меня до конца установки!)
:start
If Not Exist "versions\%ForgeVersion%" (
		echo Не закрывай меня до конца установки!
		echo Я удалю ненужный кэш, когда установка завершится!
		echo .
		echo Для установки должна стоять галочка "Install client",
		echo а снизу должен быть указан такой адрес к папке:
		echo %CD%
		:err
	if Exist %FileName%.jar (call %FileName%.jar) else (
		echo .
		echo Непредвиденная ошибка! Установщик Forge не найден!! ПОЧЕМУ?
		pause
		del /q /f %FileName%.cmd
		exit
	)
	If Not Exist "versions\%ForgeVersion%" (
		echo .
		echo Forge не установлен!
		echo Версия игры %ForgeVersion% не найдена!
		echo Повтор установки...
		color 4F
		goto err
	)
	echo .
	echo Успешная установка Forge. Для запуска игры в Лаунчере выберите версию %ForgeVersion%
	del /q /f %FileName%.jar
	del /q /f %FileName%.cmd
	if %errorlevel% == 0 (echo  Кэш успешно очищен!) else (echo  Обнаружены ошибки! Возможно Forge не установлен или не удалось очистить кэш.)
	pause
	exit
) Else (
	rmdir  /s /q "versions\%ForgeVersion%"
	goto start
)
