/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

	mysql_install_db

	/usr/bin/mysqld_safe &
	sleep 10s

	echo 'GRANT ALL PRIVILEGES ON *.* TO '\''root'\''@'\''%'\'' identified by '\''password'\'';' | mysql

	killall mysqld
	sleep 10s
fi

/usr/bin/mysqld_safe
