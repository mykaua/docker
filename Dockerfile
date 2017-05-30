
#My Docker file
FROM ubuntu
#install apache and other service
RUN apt-get update -y && apt-get install apache2 apache2-utils -y \
    && apt-get -y install php && apt-get -y install vim

#Add another port for apache
RUN echo "Listen 8080" >> /etc/apache2/ports.conf

# Disable default page
RUN a2dissite 000-default.conf

# copy our virtualhost files from ./vhost directory

ADD ["./vhost/first.conf", "/etc/apache2/sites-available/"]
ADD ["./vhost/second.conf", "/etc/apache2/sites-available/"]

#enable virtualhost files

RUN a2ensite first.conf
RUN a2ensite second.conf


# copy our files for websites

RUN mkdir /home/first
RUN mkdir /home/second

ADD ./www/first/* /home/first
ADD ./www/second/* /home/second


RUN chown -R www-data:www-data /home/first
RUN chown -R www-data:www-data /home/second

# -v /webapp training/webapp
#VOLUME ["/wwww"]

###############Opens a port for linked containers ######
EXPOSE 80 8080

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
