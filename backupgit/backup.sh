#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    name=$(basename $line)
    git clone -v --mirror $line $name
    cd $name && git fetch -p -a && git gc && cd ..
done < "list.txt"
