for d in */ ; do
   kubectl kustomize $d | datree test - && echo Kustomize check for $d 
done

