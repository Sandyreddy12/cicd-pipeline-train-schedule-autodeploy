FROM docker.io/devopsedu/webapp:latest

RUN apt -y update
RUN apt install -y git
RUN apt install -y apache2

COPY ./index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
