

### ubuntu

sudo apt-get update 

#安装工具
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

#安装 GPG证书
sudo curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg |  apt-key add -

#写入软件源信息
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get -y update

sudo apt-get -y install docker.ce
