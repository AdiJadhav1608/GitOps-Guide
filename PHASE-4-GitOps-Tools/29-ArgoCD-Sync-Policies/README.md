# 🔄 ArgoCD Sync Policies

## 🧠 Introduction

ArgoCD Sync Policies define **how and when applications are synchronized** between the Git repository and the Kubernetes cluster.

They control whether deployments happen:

- Manually  
- Automatically  

Sync policies are a critical part of GitOps because they determine how changes in Git are applied to the cluster.

---

# 🎯 What is a Sync Policy?

A **Sync Policy** in ArgoCD is a configuration inside the Application resource that controls the synchronization behavior.

It ensures that the **desired state (Git)** matches the **actual state (Kubernetes cluster)**.

---

# ⚙️ Types of Sync Policies

ArgoCD supports two main types of sync policies.

---

## 🖐️ Manual Sync Policy

In manual sync:

- Changes in Git are NOT applied automatically
- User must trigger deployment manually
- Useful for controlled environments

### When to Use

- Production environments
- Critical applications
- When approvals are required before deployment

---

## 🤖 Automated Sync Policy

In automated sync:

- ArgoCD automatically detects Git changes
- Deployment happens automatically
- No manual intervention required

### When to Use

- Development environments
- Continuous deployment pipelines
- Fast iteration workflows

---

# 🔧 Automated Sync Options

Automated sync provides additional features.

---

## 🧹 Prune

- Deletes resources removed from Git
- Keeps cluster clean and consistent

---

## 🩹 Self Heal

- Automatically fixes drift in the cluster
- If someone changes resources manually, ArgoCD restores the correct state

---

## 🔁 Retry

- Automatically retries failed sync attempts
- Helps improve deployment reliability

---

# 🔄 Sync Workflow

The synchronization process works like this:

1️⃣ Developer updates configuration in Git  
2️⃣ ArgoCD detects change  
3️⃣ Sync policy decides behavior  
4️⃣ Application is deployed or updated  
5️⃣ Cluster matches Git state  

---

# 📦 Example Use Case

In a Dev environment:

- Automated sync is enabled  
- Changes are deployed instantly  

In a Production environment:

- Manual sync is used  
- Deployment happens only after approval  

This ensures **both speed and safety**.

---

# 🚀 Benefits of Sync Policies

Using sync policies provides:

- Controlled deployments
- Automation of CI/CD workflows
- Improved reliability
- Reduced manual intervention
- Self-healing infrastructure

---

# 📌 Best Practices

- Use automated sync in Dev and QA environments  
- Use manual sync in Production  
- Enable prune to remove unused resources  
- Enable self-heal to maintain consistency  
- Monitor sync status regularly  

---

# 🏁 Summary

ArgoCD Sync Policies control how applications are deployed in GitOps workflows.

They define:

- When deployments happen  
- How synchronization occurs  
- How drift is handled  

Choosing the right sync policy ensures **efficient and safe deployments**.

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