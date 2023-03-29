#!/bin/env bash

# Script para iniciar um pod de maneira "imperativa"

kubectl run sample-app-imperative --image=eumirandarainer/simple-go-app --port=8888 --labels app=simple-go-app

# Fazer o port-forwarding para que as conexoes sejam direcionadas corretamente

kubectl port-forward pod/simple-go-app-imperative 9999:8888

# Remove o Pod
kubectl delete pod simple-go-app-imperative
