# Kubernetes (k8s) on Centos7/RHEL7
Kubernetes is a cluster and orchestration engine for docker containers. In other words Kubernetes is an open source software or tool which is used to orchestrate and manage docker containers in cluster environment. Kubernetes is also know as k8s and it was developed by Google and donated to "Cloud Native Computing Foundation"
In Kubernetes setup we have one master node and multiple worker nodes. Cluster nodes is known as worker node. From the master node we manage the cluster and its node using "kubeadm" and "kubectl" command.  

Kubernetes can be installed and deployed using following methods: 
- **Minikube** (It is a single node kubernetes cluster)
- **Kops** (Multi node kubernetes setup into Amazon Web Service)
- **Kubeadm** (Multi node cluster in our own premises)
We will install latest version of Kubernetes on Centos 7 with kubeadm utility. In my setup I am taking three Centos 7 servers with minimal installation. One server will acts master node and rest two server will be worker nodes. 
![Kubernetes Image](https://github.com/vivekshwarup/kubernetes/blob/master/img/k8s1.png)
## On the master node following components will be installed
- **API Server** - It provides kubernetes API using json/Yaml over http, states of API objects are stored in etcd. 
- **Scheduler** - It is a program on master node which performs the scheduling tasks like launching containers in worker nodes based on resource availability. 
- **Controller Manager** - Main Job of controller manager is to monitor replication controllers and create pods to maintain desired state. 
- **etcd** - It is a key value pair data base. It stores configuration data of cluster and cluster state. 
- **Kubectl Utility** - It is a command line utility which connects to API Server on port 6443. It is used by administrators to create pods, services etc. 
## On the worker nodes following components will be installed
- **Kubelet** - It is an agent which runs on every worker node, it connects to docker and takes care of creating, starting, deleting containers.
- **Kube-Proxy** - It routes the traffic to appropriate containers based on ip address and port number of the incoming request. In other words we can say it is used for port translation. 
- **Pod - Pod can be defined as a multi-tier or group of containers that are deployed on a single worker node or docker host. 
  
 