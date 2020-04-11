FROM centos:7

RUN yum install httpd -y 

# workdir define un directorio de trabajo
WORKDIR /var/www/html

COPY initializr .

# Para añadir variables de entorno se unsa ENV
ENV contenido prueba

RUN echo "$contenido" > /var/www/html/prueba.html

# expose asigna un puerto diferente 
EXPOSE 81
 
CMD apachectl -DFOREGROUND
