# Install with Helm
Add Jestack Helm Repository

`helm repo add jetstack https://charts.jetstack.io`

Update repo

`helm repo update`

Update repo

```
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.7.2 \
  --set installCRDs=true
  ```