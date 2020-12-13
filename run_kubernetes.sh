#!/usr/bin/env bash

dockerpath="abdken/udacity-devops-p4-sklearn"

# Run in Docker Hub container with kubernetes
kubectl run udacity-devops-p4-sklearn\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=sklearn

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward udacity-devops-p4-sklearn 8080:80