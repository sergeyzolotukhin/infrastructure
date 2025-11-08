### Kubelet
What it is: An agent that runs on each worker node in the cluster.

What it does:

Manages Pods: It receives Pod specifications from the Kubernetes control plane and ensures the Pods are running as specified.
Monitors health: It continuously monitors the health of the containers and Pods on its node, reporting their status back to the control plane.
Performs actions: It can restart failed containers and is responsible for the actual lifecycle of the Pods on the node.

Role: To act as a node-level manager that ensures the desired state of the Pods is maintained on its host machine. 