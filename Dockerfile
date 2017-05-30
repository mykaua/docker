
#My Docker file
FROM ubuntu
#install apache and other service
RUN apt update -y && apt install apache apache2-utils -y \
    && apt install php && apt install vim

RUN echo "Hello world docker test " > /var/www/html/index.html

###############Opens a port for linked containers ######
EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
