#!/usr/bin/env bash
set -e # halt script on error


# build site with jekyll
jekyll build

# copy generated site to the blog branch
cp  -rf _site/* ../francesliang.github.io

# commit and push changes
cd ../francesliang.github.io
git config user.email "francisliang2010@hotmail.com"
git config user.name "Xin(Frances) Liang"
git add -A .
git commit -am "Travis #$TRAVIS_BUILD_NUMBER"
git push