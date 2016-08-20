git config user.email liangshuangde@163.com
git filter-branch --commit-filter \
'export GIT_AUTHOR_NAME="Icer";\
export GIT_AUTHOR_EMAIL=liangshuangde@163.com;\
export GIT_COMMITTER_NAME="Icer";\
export GIT_COMMITTER_EMAIL=liangshuangde@163.com;\
git commit-tree "$@"'

#if need to change author according to some criteria, here is the clue: http://stackoverflow.com/a/4494037/2558077
