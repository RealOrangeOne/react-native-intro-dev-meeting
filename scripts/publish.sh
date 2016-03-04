#!/usr/bin/env bash

set -e

echo ">> Compressing JS..."
uglifyjs build/js/app.js --compress --screw-ie8 --define --stats --keep-fnames -o src/js/app.js

echo ">> Compressing CSS..."
cleancss -d --s0 -o build/css/style.css build/css/style.css
