FROM scratch

ADD ubuntu-base-20.04.1-base-amd64.tar /

RUN apt-get update

RUN apt-get install nginx -y

copy ./nginx.conf /etc/nginx/nginx.conf

COPY ./*.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
