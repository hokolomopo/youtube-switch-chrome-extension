#!/bin/bash
BUILD_DIR="build"
CHROME_ZIP="YoutubeSwitch-chrome.zip"
FIREFOX_XPI="YoutubeSwitch-firefox.xpi"
rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR"
cp manifest.chrome.json manifest.json
zip -r "$BUILD_DIR/$CHROME_ZIP" manifest.json *.js icons
rm manifest.json
cp manifest.firefox.json manifest.json
zip -r "$BUILD_DIR/$FIREFOX_XPI" manifest.json *.js icons
rm manifest.json
echo "Build complete. Output: $BUILD_DIR/$CHROME_ZIP and $BUILD_DIR/$FIREFOX_XPI"
