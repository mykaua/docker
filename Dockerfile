
#My Docker file
FROM ubuntu
#install apache and other service
RUN apt-get update -y && apt-get install apache2 apache2-utils -y \
    && apt-get -y install php && apt-get -y install vim

RUN echo "Hello world docker test " > /var/www/html/index.html

###############Opens a port for linked containers ######
EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
