# Kubernetes (k8s) on Centos7/RHEL7
Kubernetes is a cluster and orchestration engine for docker containers. In other words Kubernetes is an open source software or tool which is used to orchestrate and manage docker containers in cluster environment. Kubernetes is also know as k8s and it was developed by Google and donated to "Cloud Native Computing Foundation"
In Kubernetes setup we have one master node and multiple worker nodes. Cluster nodes is known as worker node. From the master node we manage the cluster and its node using "kubeadm" and "kubectl" command.  

Kubernetes can be installed and deployed using following methods: 
##### Minikube (It is a single node kubernetes cluster)
##### Kops (Multi node kubernetes setup into Amazon Web Service)
##### Kubeadm (Multi node cluster in our own premises)
We will install latest version of Kubernetes on Centos 7 with kubeadm utility. In my setup I am taking three Centos 7 servers with minimal installation. One server will acts master node and rest two server will be worker nodes. 

 