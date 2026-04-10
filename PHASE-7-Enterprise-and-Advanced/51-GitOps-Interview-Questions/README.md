# 🎯 GitOps Interview Questions

## 🧠 Introduction

Preparing for GitOps interviews requires understanding both **concepts and practical scenarios**.

👉 This guide covers commonly asked **interview questions with simple explanations**.

---

# 🔰 Basic Questions

## 1️⃣ What is GitOps?

GitOps is a practice where:

- Git is the single source of truth  
- Infrastructure and applications are managed using Git  
- Changes are automatically deployed  

---

## 2️⃣ What are the key principles of GitOps?

- Declarative configuration  
- Version control (Git)  
- Automated deployment  
- Continuous reconciliation  

---

## 3️⃣ What is a GitOps workflow?

1️⃣ Code pushed to Git  
2️⃣ CI builds and tests  
3️⃣ GitOps tool detects changes  
4️⃣ Deploys to Kubernetes  

---

## 4️⃣ What is reconciliation in GitOps?

It is the process of:

👉 Continuously comparing desired state (Git) with actual state (cluster) and fixing differences.

---

## 5️⃣ What is drift in GitOps?

Drift occurs when:

👉 The actual cluster state differs from the Git state.

---

# ⚙️ Intermediate Questions

## 6️⃣ Difference between CI/CD and GitOps?

- CI/CD → Pipeline-based deployment  
- GitOps → Pull-based deployment using Git  

---

## 7️⃣ What tools are used in GitOps?

- ArgoCD  
- FluxCD  
- Jenkins / GitHub Actions  
- Helm / Kustomize  

---

## 8️⃣ What is the role of ArgoCD?

- Monitors Git repositories  
- Deploys applications to Kubernetes  
- Maintains desired state  

---

## 9️⃣ What is the role of FluxCD?

- Automates deployments from Git  
- Supports image automation  
- Lightweight GitOps tool  

---

## 🔟 What is declarative configuration?

👉 You define the desired state, and the system ensures it is maintained.

---

# 🔐 Advanced Questions

## 1️⃣1️⃣ How do you manage secrets in GitOps?

- Use Sealed Secrets  
- Use External Secrets  
- Avoid storing plain secrets in Git  

---

## 1️⃣2️⃣ What is RBAC in GitOps?

Role-Based Access Control:

👉 Restricts access based on roles to improve security.

---

## 1️⃣3️⃣ What is progressive delivery?

👉 Gradual deployment strategy (Canary, Blue-Green) to reduce risk.

---

## 1️⃣4️⃣ How does rollback work in GitOps?

👉 Revert to previous Git commit → system automatically restores previous state.

---

## 1️⃣5️⃣ What is Policy as Code?

👉 Define rules (OPA) to validate configurations before deployment.

---

# 🧪 Scenario-Based Questions

## 1️⃣6️⃣ What happens if someone changes the cluster manually?

👉 GitOps tool detects drift and reverts changes to match Git.

---

## 1️⃣7️⃣ How do you handle a failed deployment?

- Check logs and metrics  
- Rollback via Git  
- Fix issue and redeploy  

---

## 1️⃣8️⃣ How do you scale GitOps for large teams?

- Use multi-repo strategy  
- Implement RBAC  
- Manage multi-cluster environments  

---

## 1️⃣9️⃣ Why should you avoid using `latest` tag?

👉 Causes unpredictable deployments and rollback issues.

---

## 2️⃣0️⃣ How do you secure a GitOps pipeline?

- Use secrets management  
- Enable RBAC  
- Scan images  
- Validate configs with OPA  

---

# 🚀 Tips to Crack GitOps Interviews

- Understand concepts clearly  
- Practice real-world scenarios  
- Know tools like ArgoCD & Flux  
- Be ready for practical questions  
- Explain workflows step-by-step  

---

# 🏁 Summary

GitOps interview preparation should focus on:

- Core concepts  
- Tools and workflows  
- Real-world scenarios  

👉 Mastering these will help you **crack DevOps interviews confidently**.

---

# 🤝 Contribute
Add more questions, scenarios, or notes to improve this guide.

---

