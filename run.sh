#!/bin/bash

echo "Iniciando contenedor..."
echo "INICIADO" > /var/www/html/ini.html
apachectl -DFOREGROUND
