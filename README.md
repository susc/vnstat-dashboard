# 简介
此面板主要提供以下功能

* 每小时统计图表（使用 Google Charts）
* 每日/每月统计总览
* 流量最高的10天统计
* 自动填充的界面选择

## 界面预览
![主界面](https://raw.githubusercontent.com/susc/vnstat-dashboard/master/docs/screenshots/main.png)

## 使用Docker部署

### 构建镜像
``$ docker build . -t susc/vnstat-dashboard:latest``

### 发布镜像
``$ docker push susc/vnstat-dashboard:latest``

### 启动容器
``$ docker run --name vnstat-dashboard -p 80:80 -v /usr/bin/vnstat:/usr/bin/vnstat -v /var/lib/vnstat:/var/lib/vnstat -d susc/vnstat-dashboard:latest``

### 停止容器
``$ docker stop vnstat-dashboard``

## 本地部署

### 运行方式
```
$ cp -rp app/ /var/www/html/vnstat/
$ cd /var/www/html/vnstat/
$ composer install
```
