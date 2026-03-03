# 🗂️ Repository Structure Example

This example demonstrates a **multi-environment GitOps repository** using Kustomize.

```
gitops-repo/
├── base/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── configmap.yaml
├── overlays/
│   ├── dev/
│   │   └── kustomization.yaml
│   ├── staging/
│   │   └── kustomization.yaml
│   └── prod/
│       └── kustomization.yaml
└── README.md
```

### Explanation:
- `base/` → Common manifests for all environments  
- `overlays/` → Environment-specific overrides  
- `kustomization.yaml` → References base and adds environment-specific changes  

This structure allows **safe environment isolation** while reusing common configurations.

---
```