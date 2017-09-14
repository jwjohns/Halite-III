#!/usr/bin/env bash
sudo gem install bundler
bundle install --path=vendor/bundle

# Set up builds folder with Windows.exe, Linux-x64, MacOS halite environment executables
# you need make sure that website/assets/downloads and website/_data needs to be created for this script to work
python3 make_starter_kits.py 0.9.0-Beta ../../builds/

npm install
cd ../libhaliteviz
npm install
cd ../website
npm run build
bundle exec jekyll build