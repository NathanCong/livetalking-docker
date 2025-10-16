# livetalking-docker

Docker 部署 livetalking 数字人服务

## 初次使用前准备

```bash
# 第一步：添加本地镜像到 ~/docker/images/ 目录下
mv livetalking-5090_latest.tar.gz ~/docker/images/

# 第二步：加载本地镜像
sudo docker load -i ~/docker/images/livetalking-5090_latest.tar.gz

# 第三步：将模型所需的 data 添加到 ~/codes/livetalking-docker/volumes/data 目录下
mv data/* ~/codes/livetalking-docker/volumes/data/*

# 第四步：将模型所需的 models 添加到 ~/codes/livetalking-docker/volumes/models 目录下
mv models/* ~/codes/livetalking-docker/volumes/models/*
```

## 启动服务

```bash
sh ./scripts/start.sh
```

## 停止服务

```bash
sh ./scripts/stop.sh
```

## 重启服务

```bash
sh ./scripts/restart.sh
```

## 查看日志
```bash
sudo docker logs -f livetalking-5090
```
