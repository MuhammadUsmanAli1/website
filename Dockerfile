FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN echo 'Hello, docker' > /var/www/index.html
RUN apt-get update && apt-get install -y docker
RUN apt install unzip
WORKDIR /var/www/html
RUN https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip
RUN unzip uliya.zip
RUN COPY ./uliya/ /usr/local/apache2/htdocs
RUN rm -rf uliya uliya.zip
RUN apt-get clean
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
