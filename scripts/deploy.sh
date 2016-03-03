#!/usr/bin/env bash

BRANCH=gh-pages
TARGET_REPO= $CIRCLE_PROJECT_REPONAME + $CIRCLE_PROJECT_USERNAME
DIST_FOLDER=build

echo -e "Starting deployment to Github Pages\n"

if [ "$TRAVIS" == "true" ]; then
    git config --global user.email "git@theorangeone.net"
    git config --global user.name $CIRCLE_USERNAME
fi

# Using token clone gh-pages branch
git clone --quiet --branch=$BRANCH https://${GH_TOKEN}@github.com/$TARGET_REPO built_website > /dev/null

# Go into directory and copy data we're interested in to that directory
cd built_website
rsync -rv --exclude=.git  ../$DIST_FOLDER/* .

# Add, commit and push files
git add -f .
git commit -m "Deployment - build $CIRCLE_BUILD_NUM"
git push -fq origin $BRANCH > /dev/null

echo -e "Deployment completed.\n"
