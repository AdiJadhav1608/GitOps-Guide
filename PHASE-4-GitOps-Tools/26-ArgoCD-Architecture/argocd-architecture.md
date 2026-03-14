# 🏗️ ArgoCD Architecture Flow

The following diagram explains how ArgoCD components interact with Git repositories and Kubernetes clusters.

```
Developer
    │
    │  Push Code
    ▼
Git Repository
    │
    │  Monitored by
    ▼
ArgoCD Repository Server
    │
    │  Sends manifests
    ▼
ArgoCD Application Controller
    │
    │  Compares Desired vs Actual State
    ▼
Kubernetes Cluster
    │
    │
    ▼
Application Deployment
```

---

# 📌 Step-by-Step Flow

## Step 1 – Developer Updates Git

The developer updates Kubernetes manifests, Helm charts, or Kustomize files in the Git repository.

Example:

- deployment.yaml
- service.yaml
- kustomization.yaml

These files define the **desired state of the application**.

---

## Step 2 – Git Repository Stores Configuration

Git acts as the **single source of truth**.

All application configurations are stored and version-controlled inside the Git repository.

---

## Step 3 – Repository Server Fetches Configuration

The ArgoCD **Repository Server** continuously monitors the Git repository.

When a change is detected, it fetches the updated configuration files.

---

## Step 4 – Application Controller Compares State

The **Application Controller** compares:

Desired State → Configuration stored in Git  
Actual State → Running configuration in the Kubernetes cluster

If differences exist, synchronization begins.

---

## Step 5 – Cluster Synchronization

ArgoCD automatically applies the configuration to the Kubernetes cluster.

This ensures the cluster matches the **desired state defined in Git**.

---

# 🚀 Result

The application is deployed or updated automatically without manual intervention.

This automated process is the core idea of **GitOps continuous delivery**.
```