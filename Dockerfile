# This is the the code used to build the Dockerfile.

FROM ubuntu:latest

RUN apt-get -y update
 
RUN apt-get install -y apache2 curl

EXPOSE 80

WORKDIR /var/www/html

COPY src /var/www/html 

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]

# The following are the commands used to build it.

# docker build -t apacheserver .

# docker run -d --name apache1 apacheserver

# docker exec apache1 curl localhost
