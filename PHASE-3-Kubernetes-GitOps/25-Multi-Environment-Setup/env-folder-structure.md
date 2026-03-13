# 📁 Example Multi Environment Folder Structure

A common GitOps repository structure for managing multiple environments looks like this:

```
gitops-repo/
│
├── apps/
│   └── nginx/
│       ├── base/
│       │   ├── deployment.yaml
│       │   └── service.yaml
│
├── environments/
│   ├── dev/
│   │   └── kustomization.yaml
│   │
│   ├── staging/
│   │   └── kustomization.yaml
│   │
│   └── production/
│       └── kustomization.yaml
```

---

# 📌 Explanation

## Base Folder

The **base folder** contains the common Kubernetes manifests used across all environments.

Example files:

- deployment.yaml
- service.yaml

These files define the default configuration.

---

## Environment Folders

Each environment has its own folder.

Examples:

- dev
- staging
- production

These folders contain **environment-specific configuration**.

---

## Kustomization Files

Each environment uses a `kustomization.yaml` file to customize the base configuration.

Example:

```
resources:
  - ../../apps/nginx/base

replicas: 2
```

This allows each environment to override settings like:

- Replica count
- Image tags
- Resource limits

---

# 🎯 Why This Structure is Useful

This folder structure helps teams:

- Maintain clean configuration management
- Avoid duplicate YAML files
- Apply environment-specific changes easily
- Keep everything version-controlled in Git

---

# 🚀 GitOps Workflow Example

1. Developer commits change to Git repository  
2. GitOps tool detects change  
3. Correct environment configuration is applied  
4. Kubernetes cluster updates automatically  

This ensures that **each environment stays synchronized with Git**.