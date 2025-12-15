#### What is the difference between Docker networking and Kubernetes networking?
Kubernetes uses a flat networking model that’s designed to accommodate distributed systems. 

#### The three main types of network components in Kubernetes are Pod networking, Service networking, and Ingress/Egress networking.

- Pod Networking: 
Handles direct communication between Pods. 
Each Pod gets a unique IP address, and Pods communicate [without NAT], 
using CNI plugins for routing and IP management.

- Service Networking: 
Provides [stable virtual IPs] (ClusterIP) for accessing a group of Pods. 
Kube-proxy manages traffic routing to healthy Pods using iptables, IPVS, or eBPF.

- Ingress/Egress Networking:
Manages external access to the cluster. 
Ingress controllers handle HTTP/S routing to internal Services, 
while Egress defines how Pods reach resources outside the cluster, often using NAT or egress gateways.

#### Several different service types are supported

- ClusterIP 
ClusterIP services expose the service on an IP address that’s only accessible [within the cluster]. 
Use these services for internal components such as databases, where the service is exclusively used by other Pods.

- NodePort 
The service is exposed on [a specified port on each Node] in the cluster. 
Only one service can use a given NodePort at a time.

- LoadBalancer
Exposes the service [externally] using a Load Balancer that’s provisioned in your cloud provider account.

#### Three different PROXY MODES are supported to change how the request is forwarded:

- iptables
- ipvs
- kernelspace

https://spacelift.io/blog/kubernetes-networking

