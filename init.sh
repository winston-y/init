#!/usr/bin/env bash

URL_header="https://gist.githubusercontent.com/winston-y/"

url_tail_winston="54dfffdf18c2b0803f040296c1208cd0/raw/8f9129986df76a54181680f68c596fee73008bc7/winston"
url_winston=$URL_header$url_tail_winston

url_tail_winPackage="a698fc8516fea7bd8d3c5c4dce835728/raw/d150989d0db7c124477d77f8193188e6b799c62f/winPackage"



echo $url_winston
# echo "alias xxx=''" >> ~/.bashrc


echo "alias vibashrc='vi ~/.bashrc'" >> ~/.bashrc
echo "alias sourbashrc='source ~/.bashrc'" >> ~/.bashrc


# gist 
echo "alias sourgist='source <(curl -s -L $url_winston)'" >> ~/.bashrc
source ~/.bashrc


# apt
sudo apt install -y curl
