#!/bin/bash

# 初始化 miniconda
source /root/miniconda3/etc/profile.d/conda.sh

# 启动服务
cd /root/LiveTalking && \
conda activate nerfstream && \
python app.py --transport webrtc --model musetalk --avatar_id avator_3 --max_session 10 --REF_FILE zh-CN-XiaoxiaoNeural --listenport 8011
