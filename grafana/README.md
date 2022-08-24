Use the following to update Grafana.
-   helm repo add grafana https://grafana.github.io/helm-charts
-   helm repo update
-   helm upgrade grafana grafana/grafana -f grafana/values.yaml --namespace grafana --reuse-values
