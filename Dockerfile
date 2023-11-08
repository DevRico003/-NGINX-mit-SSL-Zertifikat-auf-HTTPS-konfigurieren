FROM nginx:alpine

RUN mkdir /etc/nginx/ssl

COPY nginx.crt /etc/nginx/ssl/nginx.crt
COPY nginx.key /etc/nginx/ssl/nginx.key

RUN rm /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html

COPY ssl.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

