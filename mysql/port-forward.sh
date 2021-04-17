#kubectl exec --stdin --tty $(kubectl get pods | grep mysql | cut -d' ' -f1) -- /usr/bin/mysql
kubectl port-forward $(kubectl get pods | grep mysql | cut -d' ' -f1) 3306:3306 --address 0.0.0.0 &
#kubectl exec --stdin --tty $(kubectl get pods | grep mysql | cut -d' ' -f1) -- /bin/bash
