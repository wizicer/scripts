#!/bin/sh

npm config set https-proxy http://10.7.0.131:8119
npm config set proxy http://10.7.0.131:8119

# git config --global http.proxy 'socks5://127.0.0.1:7070'
# git config --global https.proxy 'socks5://127.0.0.1:7070'

curl -L -O https://www.nuget.org/nuget.exe --socks5-hostname 10.7.0.131:1080
./nuget.exe config -set http_proxy=http://10.7.0.131:8119
# nuget.exe config -set http_proxy.user=mydomain\myUserName
# nuget.exe config -set http_proxy.password=mySuperSecretPassword
