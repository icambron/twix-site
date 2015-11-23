#!/bin/bash
set -e

cd source/twix.js
git pull origin master
make configure
make build
cd ../..

bundle exec middleman build

cd build
git add .
git commit -am "build"
git push -f origin gh-pages
