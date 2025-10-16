#!/bin/bash

# 初始化 miniconda
source /root/miniconda3/etc/profile.d/conda.sh

# 启动服务
cd /root/LiveTalking && \
conda activate nerfstream && \
export DOUBAO_APPID=${DOUBAO_APPID}
export DOUBAO_TOKEN=${DOUBAO_TOKEN}
python app.py --transport webrtc --model musetalk --avatar_id avator_3 --max_session 10 --tts doubao --REF_FILE zh_female_qingxinnvsheng_mars_bigtts --listenport 8011
