#kubectl exec --stdin --tty $(kubectl get pods | grep mysql | cut -d' ' -f1) -- /usr/bin/mysql
kubectl exec --stdin --tty $(kubectl get pods | grep mysql | cut -d' ' -f1) -- /bin/bash
