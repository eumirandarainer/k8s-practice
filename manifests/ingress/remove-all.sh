#!/bin/env sh

kubectl delete -f deploy.yaml

kubectl delete deployment demo 
kubectl delete ingress demo-localhost
