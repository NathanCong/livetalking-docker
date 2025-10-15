#!/bin/bash

# 命令执行失败自动退出
set -e

# 第一步：先停止服务
sudo docker compose down

# 第二步：再启动服务
sudo docker compose up -d
