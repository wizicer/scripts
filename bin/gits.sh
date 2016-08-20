#!/bin/bash

for gitdir in `find ./ -type d -name .git -maxdepth 3`; 
    do 
        echo $1, $*, $#
        workdir=${gitdir%/*}; 
        echo -n "$workdir  "; 
        # git --git-dir=$gitdir --work-tree=$workdir fap; 
        git --git-dir=$gitdir --work-tree=$workdir status -sb; 
    done

#credit to http://stackoverflow.com/a/2999415/2558077
