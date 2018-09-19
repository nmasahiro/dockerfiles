#!/bin/bash -xe

# Apply Python 2.6 to 2.7
echo 'source /opt/rh/python27/enable' > /etc/profile.d/python27.sh
source /etc/profile

# Google Cloud Library
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-180.0.0-linux-x86_64.tar.gz?hl=ja
tar -zxvf google-cloud-sdk-180.0.0-linux-x86_64.tar.gz\?hl\=ja
yes | ./google-cloud-sdk/install.sh
echo 'export PATH=$PATH:/google-cloud-sdk/bin/' >> ~/.bashrc
source ~/.bashrc
