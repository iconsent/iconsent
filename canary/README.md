# Demo of canary deployment

This demo uses [flagger](https://flagger.app/) to perform automatic rollouts. Flagger automatically
updates the weightage of the new version and bring it up to 100%.

The following diagram shows the setup of the default demo application:

	
	                                                              ┌────────────────┐
	                                                              │                │
	                                                ┌─────────────┤     v1.0.1     │
	                                                │             │                │
	                                                │             └────────────────┘
	                                                │              springboot-demo
	                                                │
	┌───────────────────┐            ┌──────────────┴───┐
	│   load generator  │            │  fe-demo-python  │
	│                   ├────────────┤                  │
	│                   │            │                  │
	└───────────────────┘            └──────────────┬───┘
	                                                │
	                                                │             ┌────────────────┐
	                                                │             │                │
	                                                └─────────────┤     v1.0.2     │
	                                                              │                │
	                                                              └────────────────┘ 


Install flagger and enable it to monitor the metrics using the setup.sh script.

- The [01-namespace.yaml](01-namespace.yaml) file enables linkerd for the demo namespace.
- The [02-canary.yaml](02-canary.yaml) file provides the rollout strategy that is used by flagger to perform
the rolling upgrade.
- The [03-deployment-1.0.1.yaml](03-deployment-1.0.1.yaml) file contains the version 1.0.1 of the springboot-demo
application.
- The [04-slow_cooker.yaml](04-slow_cooker.yaml) file deploys a load generator. This load generator calls the
fe-demo-python app.

After the setup is ready, use the [rollout.sh](rollout.sh) script to upgrade the version of the springboot-demo
from 1.0.1 to 1.0.2.

