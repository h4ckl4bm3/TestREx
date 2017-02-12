#!/bin/bash
apt-get update

# install extra packages (recommended by Docker)
apt-get -y install linux-image-extra-$(uname -r)
apt-get -y install linux-image-extra-virtual

# install Docker (using package)
#DOCKER_PACKAGE=docker-engine_1.11.0-0~xenial_amd64.deb
#wget https://apt.dockerproject.org/repo/pool/main/d/docker-engine/$DOCKER_PACKAGE -P ~/Downloads/
#dpkg -i ~/Downloads/$DOCKER_PACKAGE

# install Python package manager
apt-get -y install python-pip

# install Python bindings and other required software
pip install selenium
pip install docker
pip install pyvirtualdisplay
apt-get -y install cgroup-lite

# install geckodriver for selenium + firefox
GECKODRIVER=geckodriver-v0.14.0-linux64.tar.gz
wget https://github.com/mozilla/geckodriver/releases/download/v0.14.0/$GECKODRIVER -P ~/Downloads
tar -xvf ~/Downloads/$GECKODRIVER -C ~/Downloads/
mv ~/Downloads/geckodriver /usr/bin/

# enable "headless" mode for Selenium
apt-get -y install xvfb
apt-get -y install xserver-xephyr
apt-get -y install tightvncserver

# install Docker (repository)
apt-get -y install apt-transport-https software-properties-common ca-certificates
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"
apt-get updates
apt-get -y install docker-engine
