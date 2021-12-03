#!/usr/bin/env sh

# abort on errors
set -e

export PUBLIC_URL='https://fredckl.github.io/json-parser-online/'

# navigate into the build output directory
rm -rf website
mkdir -p website
cp -r src/* website
cp -r .git website
cd website

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'
#git remote add origin git@github.com:fredckl/json-parser-online.git

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:fredckl/json-parser-online.git main:gh-pages

cd -
#rm -rf website
