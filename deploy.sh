#!/bin/bash
set -euxo pipefail

hugo
cd ..
git clone git@github.com:zhpporg/zhpporg.github.io.git
cd zhpporg.github.io
git rm -rf .
git clean -fxd
mv ../zhpp/public/* .
git add -A
git commit -m "$(date)"
git push origin master
cd ..
rm -rf zhpporg.github.io
cd zhpp
