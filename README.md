# Dockerfile-Apache
Dockerfile to build apache base image

删除了apache的默认文件夹，挂载sample文件夹到镜像中，并连接到apache的/var/www/html目录
-------------
使用了以下的环境变量：
```
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_SERVERADMIN admin@localhost
ENV APACHE_SERVERNAME localhost
ENV APACHE_SERVERALIAS docker.localhost
ENV APACHE_DOCUMENTROOT /var/www
```

基础镜像为wangh/ssh,其中用ssh连接时，root账号的密码为12345

## 如何使用 ##
1. 构建镜像

```
docker build -t imagename .
```

2.运行容器
```
docker run -ti --name containername imagename
```

