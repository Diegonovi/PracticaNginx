#!/bin/bash

# Habilitar los sitios si no existen los enlaces simbólicos
if [ ! -L /etc/nginx/sites-enabled/diego.com.conf ]; then
  ln -s /etc/nginx/sites-available/diego.com.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/novilloluceno.com.conf ]; then
  ln -s /etc/nginx/sites-available/novilloluceno.com.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/seguro.net.conf ]; then
  ln -s /etc/nginx/sites-available/seguro.net.conf /etc/nginx/sites-enabled/
fi

# Recargar la configuración de Nginx
nginx -s reload

# Iniciar Nginx en primer plano
nginx -g 'daemon off;'
