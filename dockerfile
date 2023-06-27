# FROM ubuntu:20.04
FROM node:16
ENV http_proxy "http://127.0.0.1:7890"
ENV HTTP_PROXY "http://127.0.0.1:7890"
ENV https_proxy "http://127.0.0.1:7890"
ENV HTTPS_PROXY "http://127.0.0.1:7890"
# Create app directory
RUN mkdir -p /app
WORKDIR /app

COPY . /app
RUN yarn install
# RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# RUN apt-get update
# RUN apt-get -y install sudo
# RUN apt-get -y install curl
# RUN apt-get -y install wget
# RUN apt-get -y install tcl
# RUN cp /app/sources.list /etc/apt/sources.list
# RUN apt-get update
# RUN apt-get -y install pkg-config
# RUN apt-get install -y git tzdata
# RUN date
# RUN export USER=root
# Bundle app source
# RUN yarn config set registry https://registry.npm.taobao.org --global
# RUN yarn config set disturl https://npm.taobao.org/dist --global
# RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -   
# EXPOSE 17088
# CMD [ "npm", "prod" ]
