kubectl exec --stdin --tty $(kubectl get pods |grep drupal | cut -d' ' -f1) -- /bin/bash
