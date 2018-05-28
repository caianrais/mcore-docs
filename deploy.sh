#!/bin/bash

set -e

SOURCE_BRANCH="master"
TARGET_BRANCH="github.com/caianrais/mcore-docs"

SHA=$(git rev-parse --verify HEAD)

if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ];
then
    echo "Skipping deploy..."
    exit 0
fi

mv docs/index.html ../index.html
git checkout gh-pages
mv ../index.html ./

git config user.name "Travis CI"
git config user.email "caianrais@protonmail.com"

if git diff --quiet;
then
    echo "No changes in the artifact. Exiting..."
    exit 0
fi

git add index.html
git commit -m "Deploy to GitHub pages: ${SHA}"

git push --force --quiet "https://${GITHUB_ACCESS_TOKEN}@${TARGET_BRANCH}" master:gh-pages > /dev/null 2>&1
