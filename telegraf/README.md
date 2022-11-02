# k8s-manifests for Telegraf

```Remember to add your influx_token secret.
 kubectl create secret -n influx generic telegraf-creds \
 --from-literal=INFLUX_TOKEN=TOKEN
 ```
##

1.  kubectl create ns telegraf
2.  Change the cluster tag key in values.yaml to your clustename
3.  kubectl apply -f telegraf_ClusterRolePermissions.yaml
4.  helm upgrade --install telegraf-ds influxdata/telegraf-ds -n telegraf -f values.yaml\n

 
