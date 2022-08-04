#!/bin/bash
## Publish any updates made to policies.yaml before running tests. 
datree publish policies.yaml

for d in */*.yaml ; do
      if [[ $d == */kustomization.yaml ]]
         then kubectl kustomize $(dirname $d)"/" | datree test - ; echo Kustomize check for $d
      elif [[ $d != */kustomization.yaml ]] 
         then cat $d | datree test - ; echo K8S-Manifest test for $d
      fi
done