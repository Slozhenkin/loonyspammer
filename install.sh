#!/bin/bash
clear
echo "  LOONYSPAMMER  "
echo "  ОТ КОМАНДЫ LOONY  "
echo "--------------------"
echo "|  Выберите действие:                  "
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. iSH           |"
echo "|                  |"
echo "| Выберите нужное действие, введя цифру нужного действия приложения.   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/loonyspammer/spammer.py $PREFIX/bin/loonyspammer
	dos2unix $PREFIX/bin/loonyspammer
	chmod -R 777 ~/loonyspammer
	chmod 777 $PREFIX/bin/loonyspammer
	loonyspammer
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/loonyspammer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/loonyspammer/spammer.py $PREFIX/bin/loonyspammer
			dos2unix $RPEFIX/bin/loonyspammer
			chmod 777 $RPEFIX/bin/loonyspammer
			chmod -R 777 ~/loonyspammer
			loonyspammer
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			pip3 install proxyscrape
			cp ~/loonyspammer/spammer.py /usr/bin/loonyspammer
			dos2unix /usr/bin/loonyspammer
			chmod 777 /usr/bin/loonyspammer
			loonyspammer
		else
			echo "Некорректный ввод"
		fi
	fi
fi
