#!/usr/bin/env bash

set -e


BRANCH=gh-pages
DIST_FOLDER=build

echo -e "Starting deployment to Github Pages\n"

git config --global user.email "git@theorangeone.net"
git config --global user.name "RealOrangeOne"

mkdir built_website
# Using token clone gh-pages branch

git clone --branch=$BRANCH https://${GH_TOKEN}@github.com/RealOrangeOne/react-native-intro-dev-meeting.git built_website

# Go into directory and copy data we're interested in to that directory
cd built_website
rsync -rv --exclude=.git  ../$DIST_FOLDER/* .

# Add, commit and push files
git add -f .
git commit -m "Deployment - build $CIRCLE_BUILD_NUM"
git push -fq origin $BRANCH

echo -e "Deployment completed.\n"

rm -rf built_website
