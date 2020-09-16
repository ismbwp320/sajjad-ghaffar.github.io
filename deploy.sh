#!/usr/bin/env sh
# abort on errors
set -e
# build
yarn run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
echo 'frontendmaster.me' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:sajjad-ghaffar/sajjad-ghaffar.github.io.git master:gh-pages
cd -