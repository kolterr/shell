#!/bin/bash
if   [[ $1 == "" || $2 == "" ]]
then  
    echo "commit description or your local branch name is invalid"
else
# # 添加文件到缓冲区

    # 确保在本地分支上
    git checkout $2 \
    &&   git add . \
    && git commit -m  $1

    git checkout master 

    git pull 

    git checkout $2

    git rebase  master 

    git checkout master

    git merge $2 

    git push origin master
fi