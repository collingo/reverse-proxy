FROM ubuntu:14.04

RUN sudo apt-get update
RUN sudo apt-get install -y nginx

RUN sudo mkdir /usr/local/nginx
RUN sudo mkdir /usr/local/nginx/conf

RUN rm /etc/nginx/sites-enabled/default

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
