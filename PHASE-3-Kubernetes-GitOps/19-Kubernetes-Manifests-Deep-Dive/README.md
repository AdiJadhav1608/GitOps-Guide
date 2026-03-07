# 📜 Kubernetes Manifests Deep Dive

## 🧠 Introduction

Kubernetes manifests are **YAML configuration files** used to define the desired state of resources in a Kubernetes cluster.

These files describe:

- Applications
- Infrastructure
- Networking
- Storage

GitOps heavily relies on Kubernetes manifests because **Git stores these files as the desired cluster state**.

---

# ⚙️ What is a Kubernetes Manifest?

A Kubernetes manifest is a YAML file that tells Kubernetes:

- What resource to create
- How the resource should behave
- What configuration it should use

Example resources defined using manifests:

- Pod
- Deployment
- Service
- ConfigMap
- Secret
- Namespace
- Ingress
- PersistentVolume

---

# 🧩 Basic Structure of a Manifest

Every Kubernetes manifest contains these main fields:

```
apiVersion
kind
metadata
spec
```

Each field has a specific role in defining the resource.

---

# 🔹 apiVersion

Defines **which Kubernetes API version** should be used.

Example:

```
apiVersion: apps/v1
```

Different resources belong to different API groups.

---

# 🔹 kind

Specifies the **type of Kubernetes resource**.

Examples:

```
kind: Pod
kind: Deployment
kind: Service
```

---

# 🔹 metadata

Contains information that identifies the resource.

Examples include:

- Name
- Namespace
- Labels
- Annotations

Example:

```
metadata:
  name: nginx-deployment
  namespace: production
```

---

# 🔹 spec

Defines the **desired configuration of the resource**.

For example:

- Number of replicas
- Container image
- Network ports
- Environment variables

Example:

```
spec:
  replicas: 3
```

---

# 🚀 Why Manifests are Important in GitOps

GitOps works by storing manifests in Git.

When changes happen:

1. Developer edits YAML file
2. Commit pushed to Git
3. GitOps tool detects change
4. Kubernetes cluster automatically updates

This ensures:

- Version controlled infrastructure
- Reproducible deployments
- Easy rollbacks

---

# 📂 Common Kubernetes Manifest Files

In a typical GitOps repository you will find:

```
k8s/
├── namespace.yaml
├── deployment.yaml
├── service.yaml
├── ingress.yaml
└── configmap.yaml
```

Each file manages a specific part of the application.

---

# 🎯 Best Practices

- Keep manifests small and modular
- Store manifests inside Git repositories
- Use meaningful resource names
- Add labels for resource grouping
- Use version-controlled container images

---

# 📌 Summary

Kubernetes manifests are the **foundation of GitOps deployments**.

They define:

- What should run
- How it should run
- Where it should run

GitOps tools continuously ensure the **cluster matches these manifests**.

---

# 🤝 Contribute
Add more commands, diagrams, or revision notes to help learners revise Docker faster.

---

# 👨‍💻 Author
**Aditya Jadhav**  
Beginner Cloud & DevOps Learner  

📧 **adijadhav8446@gmail.com**  
🌐 **GitHub Profile:** https://github.com/AdiJadhav1608  
🔗 **LinkedIn:** https://www.linkedin.com/in/aditya-jadhav-718087339/  

⭐ *If you found this helpful, give it a star and keep learning GitOps !*