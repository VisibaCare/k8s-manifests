helm repo add wiremind https://wiremind.github.io/wiremind-helm-charts
helm install clamav1 wiremind/clamav  --namespace clamav1 --create-namespace --values values.yaml