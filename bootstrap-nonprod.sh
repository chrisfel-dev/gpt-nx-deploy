#!/bin/bash
cd ./bootstrap/overlays/nonprod
kustomize build | kubectl apply -f  -
cd ../../../argocd/overlays/nonprod
kustomize build | kubectl apply -f  -