#!/bin/bash

# 初始化 miniconda
source /root/miniconda3/etc/profile.d/conda.sh

# 进入项目目录
cd /root/LiveTalking

# 激活环境
conda activate nerfstream

# 设置环境变量（可能是重复设置，暂时保留）
export DOUBAO_APPID=${DOUBAO_APPID}
export DOUBAO_TOKEN=${DOUBAO_TOKEN}

# 启动服务
python app.py \
--transport webrtc \
--model musetalk \
--avatar_id avator_3 \
--max_session 10 \
--tts doubao \
--REF_FILE zh_female_qingxinnvsheng_mars_bigtts \
--listenport 8011
