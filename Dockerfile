FROM ubuntu:latest
MAINTAINER Sumit Kumar Maji

#Install JDK 1.6
RUN apt-get update && apt-get install -yq apache2
RUN apt-get install -yq libapache2-mod-jk
RUN apt-get clean

ADD 000-default.conf /etc/apache2/sites-enabled/000-default.conf
ADD jk.conf /etc/apache2/mods-available/jk.conf
ADD workers.properties /etc/apache2/workers.properties

ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

ENTRYPOINT ["sh", "/root/run.sh"]

