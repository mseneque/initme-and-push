#!/bin/bash

# set GitHub Username
username="$1"

if [ "$username" == '' ]
then
printf "usage:\n$ cat names | ./initMeAndPush.sh (GitHub_Username) \n"
else
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
fi