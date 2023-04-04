#!/bin/env sh

# Create a simple web server and the associated service
kubectl create deployment demo --image=httpd --port=80
kubectl expose deployment demo

# Create an ingress resource
kubectl create ingress demo-localhost --class=nginx --rule="demo.localdev.me/*=demo:80"

cat <<EOF

$ curl http://demo.localdev.me:8080

EOF

# Forward a local port to the ingress controller
kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8080:80
