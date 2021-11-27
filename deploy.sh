#!/usr/bin/env sh

# abort on errors
set -e

export PUBLIC_URL='https://jsonparser.frederickoller.ch'

# navigate into the build output directory
mkdir website
cp -r src website

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:fredckl/json-parser-online.git main:gh-pages

cd -
rm -rf website
