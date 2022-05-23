
FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN echo 'Hello, docker' > /var/www/index.html
RUN apt-get update && apt-get install -y docker
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip
WORKDIR /var/www/html
RuN unzip uliya.zip
RUN cp -rvf /uliya/*
RUN	rm -rf uliya uliya.zip
RUN apt-get clean
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
