#!/usr/bin/env bash

npm i -g surge
# Actual building and setup of current push or PR.
npm install
npm run build
rm -rf node_modules/
cp build/index.html build/404.html

export SURGE_LOGIN=fossasiasusichat@example.com
# Token of a dummy account.
export SURGE_TOKEN=a34fd7119aacd204150edd6a8e29903d

export DEPLOY_DOMAIN=https://pr-1-fossasia-susi-web-chat.surge.sh
surge --project ./build --domain $DEPLOY_DOMAIN;
