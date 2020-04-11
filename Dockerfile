FROM centos:7

RUN yum install httpd -y 

WORKDIR /var/www/html

COPY personify .

ENV contenido prueba

RUN echo "$contenido" > /var/www/html/prueba.html

CMD apachectl -DFOREGROUND
