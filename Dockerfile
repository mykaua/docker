
#My Docker file
FROM ubuntu
#install apache and other service
RUN apt update -y && apt install apache apache2-utils -y \
    && apt install php


################	Opens a port for linked containers ######
EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
