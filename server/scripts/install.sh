#! /bin/sh

# Variables
BASE_DIR = ..

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

cp $BASE_DIR/conf/rhosscontrol.conf /etc/apache2/rhosscontrol.conf
cp -r $BASE_DIR/rhosscontrol /var/www/

/etc/init.d/apache2 restart

