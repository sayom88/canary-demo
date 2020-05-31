#!/bin/bash

command=$1

$command create configmap deployment --from-file="./deployment_service.yaml"
$command create configmap istio --from-file="./istio_manifests.yaml"
$command create -f https://raw.githubusercontent.com/tektoncd/catalog/v1beta1/git/git-clone.yaml
$command create -f build-deploy.yaml
$command create -f canary-deploy.yaml
$command create -f canary-test.yaml
$command create -f pipeline.yaml