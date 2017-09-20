FROM ubuntu:latest
MAINTAINER Sumit Kumar Maji

#Install JDK 1.6
RUN apt-get update && apt-get install -yq apache2
RUN apt-get install -yq libapache2-mod-jk
RUN apt-get clean
RUN mkdir -p /var/www/html/repo

#ADD 000-default.conf /etc/apache2/sites-enabled/000-default.conf
#ADD jk.conf /etc/apache2/mods-available/jk.conf
#ADD workers.properties /etc/apache2/workers.properties

ADD startapache.sh /root/startapache.sh
RUN chmod +x /root/startapache.sh

ENTRYPOINT ["sh", "/root/startapache.sh"]

