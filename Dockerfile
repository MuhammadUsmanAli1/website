
FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get update && apt-get install -y docker
RUN apt-get clean
RUN docker cp /var/lib/jenkins/workspace/invatech_groovy apache/index.html:/usr/local/apache2/htdocs/
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
