FROM ubuntu:20.04
MAINTAINER root
RUN apt-get update
RUN apt-get install -y nginx
RUN DEBIAN_INTERACTIVE=noninteractive apt-get install -y git
EXPOSE 80
RUN rm -f /var/www/html/* 
RUN git clone https://github.com/devopssoso/devopssoso.git /var/www/html
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]
