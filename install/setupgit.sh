#!/bin/sh

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.s "!git status && echo ========= && git lg -9 && echo ========= && git config --get-regexp remote.*.url && echo ========= && git config --get-regexp user.*"
git config --global alias.l "!git lg -9"
git config --global alias.co "checkout"
git config --global alias.ci "commit"
git config --global alias.ac "!git add -A && git commit -am"
git config --global alias.undocommit "reset --soft HEAD~1"
git config --global alias.amend "commit --amend"
git config --global alias.diffc "diff --cached"
git config --global alias.showalias "!git config -l | grep alias | cut -c 7-"
git config --global alias.addi "add -i"
git config --global alias.initialize "!git add -A && git commit -m 'initial check in'"
git config --global url.https://.insteadOf git://
