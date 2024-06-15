GITHUB_REPO=$1
DOCKER_REPO=$2
DOCKER_TAG="latest"
GITHUB_REPO_URL="https://github.com/$GITHUB_REPO.git"
git clone $GITHUB_REPO_URL
REPO_NAME=$(basename "$GITHUB_REPO_URL" .git)
cd $REPO_NAME
docker build -t $DOCKER_REPO:$DOCKER_TAG .
docker push $DOCKER_REPO:$DOCKER_TAG
echo "Done!"