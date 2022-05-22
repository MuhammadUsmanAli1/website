FROM centos:latest
MAINTAINER usmanali200087@gmail.com
RUN sudo apt install -y httpd \
 zip\
 unzip\
 ADD unzip https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip /var/www/html
 WORKDIR /var/www/html
 RUN cp -rvf uliya/*
 RUN rm -rf uliya uliya.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
