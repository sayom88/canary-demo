#!/bin/bash

command=$1

$command delete configmap deployment
$command delete configmap istio
$command delete -f build-deploy.yaml
$command delete -f canary-deploy.yaml
$command delete -f https://raw.githubusercontent.com/tektoncd/catalog/v1beta1/git/git-clone.yaml
$command delete -f canary-test.yaml
$command delete -f pipeline.yaml
$command delete -f pipeline-run.yaml
$command delete -f istio_manifests.yaml
$command delete -f deployment_service.yaml