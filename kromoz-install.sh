#! /bin/bash

if [ -f /etc/init.d/ssh ]
then
	service ssh restart
fi

if [ -f /etc/init.d/mysql ]
then
	service mysql restart
fi

if [ -f /etc/init.d/apache2 ]
then
	service apache2 restart
fi
