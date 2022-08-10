# Expand Kubernetes Monitoring with Telegraf Operator 

Install telegraf-operator by running ```helm upgrade --install telegraf-operator influxdata/telegraf-operator -f values.yaml ``` after supplying your token to the values file.


First, we should distinguish between Telegraf and the Telegraf Operator.

Telegraf is an open source server agent designed to collect metrics from stacks, sensors and systems.

The Telegraf Operator, on the other hand, is an application designed to create and manage individual Telegraf instances in Kubernetes clusters. Essentially, it functions as a control plane for managing the individual Telegraf instances deployed throughout your Kubernetes cluster. Telegraf Operator is a standalone application, and it’s deployed separately from Telegraf.

But where do sidecar Telegraf containers come from? That’s where Telegraf Operator comes into play.

Telegraf Operator works at the pod level, so you can use it with anything that creates a pod object in your Kubernetes environment. When something  a deployment, StatefulSet, DaemonSet, Job or CronJob  sends out a request to create a new pod, Telegraf Operator intercepts that request, using the mutating webhooks functionality in Kubernetes, and gets a chance to apply changes to it.

Telegraf Operator reads the pod annotations in the request and if an annotation says to add a Telegraf sidecar, then Telegraf Operator adds that instance as an additional container within that pod. In other words, Telegraf Operator looks at the list of containers for the new pod and adds another container to the list if instructed to do so by the annotations.

Once the Telegraf sidecar container is in place, it can begin scraping data and pushing metrics to a database such as InfluxDB.