#!/bin/bash

# No caso de falha, finalizar imediatamente com código > 0.
set -e

SOURCE_BRANCH="master"
TARGET_REPO="github.com/caianrais/mcore-docs"

# Guarda o SHA da última revisão (aka último commit) da master.
SHA=$(git rev-parse --verify HEAD)

# Ignora build no caso de pull requests e commits fora da master.
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ];
then
    echo "Skipping deploy..."
    exit 0
fi

# Copia o artefato para a $HOME e clona a branch "gh-pages".
cd ..
mv mcore-docs/docs/index.html ./

git clone -b gh-pages "https://${TARGET_REPO}" gh-pages
mv index.html gh-pages/
cd gh-pages

# Configura o Git
git config user.name "Travis CI"
git config user.email "caianrais@protonmail.com"

# Se não houver nenhuma diferença entre o artefato atual e o novo, finalizar.
if git diff --quiet;
then
    echo "No changes in the artifact. Exiting..."
    exit 0
fi

# Adiciona o novo artefato e dá push na branch do GitHub pages sem output no SDTOUT.
git add index.html
git commit -m "docs: deploy no GitHub pages (rev: ${SHA})"

git push --force --quiet "https://${GITHUB_ACCESS_TOKEN}@${TARGET_REPO}" gh-pages:gh-pages > /dev/null 2>&1
