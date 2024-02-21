FROM ubuntu:latest
LABEL maintainer=compiler@aast.edu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
COPY index.html /var/www/html/iti.html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
