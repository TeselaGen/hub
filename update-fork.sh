#!/bin/bash

git fetch
git checkout master
git pull

git pull https://github.com/github/hub.git master --commit

# git add .
# git commit -m "updating fork from base"
# git push