#!/bin/sh
for param in $(jq '.[]' params.json); do
    baseUrl=$(jq '.baseUrl' <<< '$param')
    vid=$(jq '.vid' <<< '$param')
    isVe=$(jq '.isVe' <<< '$param')
    protractor tmp/protractor.conf.js --params.baseUrl="$baseUrl" --params.vid="$vid" --params.isVe="$isVe"
done