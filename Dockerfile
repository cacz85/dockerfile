FROM centos:7

RUN yum install httpd -y 

COPY initializr /var/www/html

# ADD se utiliza o se recomienda para añadir URLS
# ADD initializr /var/www/html
 
CMD apachectl -DFOREGROUND
