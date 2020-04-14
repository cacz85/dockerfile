FROM centos:7

LABEL version=1.0
LABEL description="This is an apache image"
LABEL vendor=author

RUN yum install httpd -y 

COPY personify /var/www/html

RUN echo "$(whoami)" > /var/www/html/user1.html

RUN useradd cacz

USER cacz

RUN echo "$(whoami)" > /tmp/user2.html

USER root

RUN cp /tmp/user2.html /var/www/html/user2.html

CMD apachectl -DFOREGROUND
