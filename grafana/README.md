Use the following to update Grafana.
-   helm repo add grafana https://grafana.github.io/helm-charts
-   helm repo update
```console
   helm upgrade grafana grafana/grafana \
  --namespace grafana \
  -f grafana/values.yaml
```
Need to investigate why but it will create new pods that want the same pvc, solve it by scaling:
- kubectl scale deployment grafana --replicas=0 -n grafana
- kubectl scale deployment grafana --replicas=1 -n grafana

Secrets for Azure AD SSO can be found in Bitwarden "grafana azure ad secrets" to update it save it to a yaml and apply it with new values.