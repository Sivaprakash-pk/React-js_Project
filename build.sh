#!/bin/bash

echo "Get the Image name from Parameterized variable:"

echo "Get the Image version from Parameterized variable:"

# Build Docker image from Dockerfile
docker build -t "$IMAGE_NAME:$IMAGE_VERSION" .
echo "Docker image build completed successfully."

# Display list of Docker images
docker images
