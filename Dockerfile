FROM --platform=linux/amd64 nginx:1.25.4-alpine

COPY /site /usr/share/nginx/html

COPY /nginx/my.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
