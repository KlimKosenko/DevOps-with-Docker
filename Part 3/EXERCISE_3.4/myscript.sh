#!/bin/sh
GITHUB_REPO=$1
DOCKER_REPO=$2
DOCKER_TAG="latest"
GITHUB_REPO_URL="https://github.com/$GITHUB_REPO.git"
DOCKER_USERNAME=${DOCKER_USER}
DOCKER_PASSWORD=${DOCKER_PWD}
git clone $GITHUB_REPO_URL
REPO_NAME=$(basename "$GITHUB_REPO_URL" .git)
cd $REPO_NAME
docker build -t $DOCKER_REPO:$DOCKER_TAG .
echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin
docker push $DOCKER_REPO:$DOCKER_TAG
echo "Done!"