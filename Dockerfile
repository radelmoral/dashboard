FROM nginx:alpine

# Copiar los archivos ya compilados
COPY dist /usr/share/nginx/html

# Configuración de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
