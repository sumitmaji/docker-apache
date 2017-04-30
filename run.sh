#!/bin/bash


/etc/init.d/apache2 start

# The container will run as long as the script is running, that's why
# we need something long-lived here
#exec tail -f /var/log/tomcat6/catalina.out
exec /bin/bash
