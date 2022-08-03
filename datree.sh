Kustomize="kustomization.yaml"

## Publish any updates made to policies.yaml before running tests. 
datree publish policies.yaml

for d in */$Kustomize ; 
   do 
      kubectl kustomize $(dirname $d)"/" | datree test - && echo Kustomize check for $d 
done  









