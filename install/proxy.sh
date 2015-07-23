#!/bin/sh

npm config set https-proxy http://127.0.0.1:1080
npm config set proxy http://127.0.0.1:1080

git config --global http.proxy 'http://127.0.0.1:1080'
git config --global https.proxy 'http://127.0.0.1:1080'

curl -L -O https://www.nuget.org/nuget.exe -x http://127.0.0.1:1080
nuget.exe config -set http_proxy=http://127.0.0.1:1080
# nuget.exe config -set http_proxy.user=mydomain\myUserName
# nuget.exe config -set http_proxy.password=mySuperSecretPassword
