# 🧪 GitOps Workflow Example

## 📘 Practical Scenario

This example demonstrates a simple GitOps workflow using a Kubernetes Deployment manifest stored in Git and automatically synchronized to a cluster.


## 📂 Example Repository Structure

gitops-repo/
├── app/
│   └── deployment.yaml
└── environments/
    └── production/
        └── kustomization.yaml


## ☸️ Example Kubernetes Deployment File

```yaml
# deployment.yaml
# This file defines the desired state of the application.
# GitOps tools monitor this file and apply changes automatically.

apiVersion: apps/v1
kind: Deployment
metadata:
  name: gitops-demo-app
  labels:
    app: gitops-demo
spec:
  replicas: 2  # Desired number of pods
  selector:
    matchLabels:
      app: gitops-demo
  template:
    metadata:
      labels:
        app: gitops-demo
    spec:
      containers:
      - name: demo-container
        image: nginx:latest  # Image version controlled via Git
        ports:
        - containerPort: 80
```


## 🔄 How This GitOps Flow Works

### Step 1: Update in Git

Developer changes image version:
nginx:latest → nginx:1.25

Commits and pushes changes.


### Step 2: GitOps Tool Detects Change

The GitOps operator continuously monitors the repository and detects the new commit.


### Step 3: Automatic Sync

The tool pulls the updated manifest and applies it to the Kubernetes cluster.


### Step 4: Continuous Reconciliation

If someone manually changes replicas to 5 in the cluster:

GitOps detects drift  
It reverts replicas back to 2  
Cluster state matches Git state again  


## 🎯 Key Learning from This Example

- Declarative infrastructure in action
- Git as the single source of truth
- No manual kubectl apply required
- Self-healing system behavior

This demonstrates the real power of GitOps in modern DevOps environments.