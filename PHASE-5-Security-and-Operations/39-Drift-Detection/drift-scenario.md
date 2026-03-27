# 🔍 Drift Detection Scenario

## 🎯 Scenario Overview

This example demonstrates how drift occurs and how GitOps tools handle it.

---

# 📦 Initial State (Correct State)

### Git Configuration

```
replicas: 3
image: nginx:1.21
```

### Kubernetes Cluster

```
replicas: 3
image: nginx:1.21
```

👉 Both states match → No Drift ✅

---

# ⚠️ Drift Introduced

A developer manually updates the deployment:

```
kubectl scale deployment nginx --replicas=5
```

---

# 🔄 Current State After Change

### Git Configuration

```
replicas: 3
image: nginx:1.21
```

### Kubernetes Cluster

```
replicas: 5
image: nginx:1.21
```

👉 Mismatch detected → Drift ❌

---

# 🔍 Drift Detection

GitOps tool (ArgoCD / Flux) detects:

- Desired state ≠ Actual state  
- Replicas value changed  

---

# 🔁 Drift Resolution (Auto-Heal Enabled)

If auto-sync is enabled:

```
replicas: 3  ← Restored automatically
```

Cluster is reverted back to Git state.

---

# 🔔 Drift Resolution (Manual Mode)

If auto-sync is disabled:

- Tool shows "OutOfSync" status  
- Developer must manually sync  

---

# 📌 Key Learnings

- Never make manual changes in cluster  
- Always update configurations via Git  
- Enable auto-healing for consistency  

---

# 🏁 Conclusion

This scenario shows how:

- Drift occurs  
- GitOps tools detect it  
- System restores desired state  

👉 Drift detection is essential for maintaining **consistent and reliable deployments**.