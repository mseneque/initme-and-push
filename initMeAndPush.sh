#!/bin/bash

# set GitHub Username
username="mseneque"

while read repoNameToInit
do

    curl -u $username https://api.github.com/user/repos -d "{\"name\":\"$repoNameToInit\"}"

    cd $repoNameToInit
    git init
    git add .
    git commit -m "initial commit"
    git remote add origin https://github.com/$username/$repoNameToInit.git
    git push origin master
    cd ..
done
