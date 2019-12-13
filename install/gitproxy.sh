#!/bin/sh

# git config --global http.proxy 'http://10.7.0.131:8119'
# git config --global https.proxy 'http://10.7.0.131:8119'

git config --global alias.setproxy "!git config --global http.proxy 'http://10.7.0.131:8119' && git config --global https.proxy 'http://10.7.0.131:8119'"
git config --global alias.noproxy "!git config --global --unset http.proxy && git config --global --unset https.proxy"
