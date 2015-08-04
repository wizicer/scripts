#!/bin/sh

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.s "!git status && echo ========= && git lg -9 && echo ========= && git remote -v && echo Author: \`git config user.name\` \<\`git config user.email\`\> && echo ========= && git ls-files -v | grep '^[a-z]' | cut -c3-"
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
git config --global alias.lsassume "!git ls-files -v | grep '^[a-z]' | cut -c3-"
git config --global alias.assume "update-index --assume-unchanged"
git config --global alias.unassume "update-index --no-assume-unchanged"
git config --global alias.makeexecutable "update-index --chmod=+x"
git config --global alias.makeexec "update-index --chmod=+x"
git config --global alias.initvsignore "!curl https://raw.githubusercontent.com/github/gitignore/master/VisualStudio.gitignore>.gitignore"
git config --global alias.initnodeignore "!curl https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore>.gitignore"
git config --global alias.mergetheirs "merge --strategy-option theirs"
git config --global alias.mergeours "merge --strategy-option ours"
git config --global alias.showname "show --name-only"
git config --global url.https://.insteadOf git://
