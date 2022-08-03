## Publish any updates made to policies.yaml before running tests. 
datree publish policies.yaml

for d in */ ; do
   kubectl kustomize $d | datree test - && echo Kustomize check for $d 
done

