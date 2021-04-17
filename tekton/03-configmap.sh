kubectl create configmap config-artifact-pvc \
                         --from-literal=size=5Gi \
                         --from-literal=storageClassName=microk8s-hostpath \
                         -o yaml -n tekton-pipelines \
                         --dry-run=client | kubectl replace -f -
