#!/bin/bash

echo "安装 Docker"

yum -y install docker

# 添加docker加速器
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://qtmx3fa5.mirror.aliyuncs.com"]
}
EOF
# 重启服务
sudo systemctl daemon-reload
sudo systemctl restart docker
