FROM node:8.4
MAINTAINER "kolter" <15228351298@163.com>
COPY . /app
WORKDIR /app
RUN npm install --registry=https://registry.npm.taobao.org \
    && npm install -g pm2 -registry=https://registry.npm.taobao.org
EXPOSE 3000
# 使用pm2生产进程管理器
CMD ["pm2-runtime","ecosystem.config.js"] 
# docker container run -d p 80:3000 images-name