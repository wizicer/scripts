#!/bin/sh

npm config set https-proxy http://127.0.0.1:1080
npm config set proxy http://127.0.0.1:1080

git config --global http.proxy 'socks5://127.0.0.1:7070'
git config --global https.proxy 'socks5://127.0.0.1:7070'

curl -L -O https://www.nuget.org/nuget.exe --socks5-hostname 127.0.0.1:1080
./nuget.exe config -set http_proxy=http://127.0.0.1:1080
# nuget.exe config -set http_proxy.user=mydomain\myUserName
# nuget.exe config -set http_proxy.password=mySuperSecretPassword
