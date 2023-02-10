FROM nginx:1.23

COPY nginx.conf /etc/nginx
COPY default.conf /etc/nginx/conf.d
COPY gen_htpasswd /etc/nginx

RUN apt update
RUN apt install -y openssl

RUN /etc/nginx/gen_htpasswd
