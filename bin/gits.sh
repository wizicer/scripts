#!/bin/bash

RED='\033[0;34m'
NC='\033[0m' # No Color
command=${*:-status -sb}
[ $# -eq 0 ] && compact=-n

for gitdir in `find ./ -type d -name .git -maxdepth 3`; 
    do 
        workdir=${gitdir%/*}; 
        echo -e ${compact} " ${RED}$workdir${NC}  "; 
        # git --git-dir=$gitdir --work-tree=$workdir fap; 
        git --git-dir=$gitdir --work-tree=$workdir $command; 
    done

#credit to http://stackoverflow.com/a/2999415/2558077
