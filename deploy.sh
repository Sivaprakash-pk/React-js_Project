#!/bin/bash

# Push Docker image to Docker Hub based on the branch name and the auto source code trigger
if [[ "$GIT_BRANCH" == "dev" ]]; then
    echo "$DOCKERHUB_PASSWORD" | docker login -u "$DOCKERHUB_USERNAME" --password-stdin
    docker tag $IMAGE_NAME:$IMAGE_VERSION "$DOCKER_REPO:$DOCKER_TAG"
    docker push "$DOCKER_REPO:$DOCKER_TAG"
    docker logout
elif [[ "$GIT_BRANCH" == "master" ]]; then
    echo "$DOCKERHUB_PASSWORD" | docker login -u "$DOCKERHUB_USERNAME" --password-stdin
    docker tag $IMAGE_NAME:$IMAGE_VERSION "$DOCKER_REPO:$DOCKER_TAG"
    docker push "$DOCKER_REPO:$DOCKER_TAG"
    docker logout
fi
