#!/usr/bin/env bash

echo "Building app JS..."
browserify -t [ babelify --presets [ es2015 ] ] src/js/app.js -o build/js/app.js

echo "Exporting Plugins..."
cp -r node_modules/reveal.js/plugin build/js
cp node_modules/reveal.js/lib/js/head.min.js build/js/head.min.js
