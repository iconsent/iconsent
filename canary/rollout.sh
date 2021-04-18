# first set the version of the app to 1.0.1
# this script then sets the version of the springboot-demo app to newer version
# the canary yaml contains the functions the flagger will execute to perform the rolling upgrade

kubectl -n demo set image deployment/springboot-demo \
  springboot-demo=iconsent/springboot-demo:1.0.2

kubectl -n demo get ev --watch
