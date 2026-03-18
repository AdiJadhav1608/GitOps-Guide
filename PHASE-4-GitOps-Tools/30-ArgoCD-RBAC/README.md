# 🔐 ArgoCD RBAC (Role-Based Access Control)

## 🧠 Introduction

In enterprise environments, multiple users interact with ArgoCD.  
To control who can access and manage applications, ArgoCD uses **RBAC (Role-Based Access Control)**.

RBAC ensures that only authorized users can perform specific actions such as:

- Viewing applications  
- Syncing deployments  
- Modifying configurations  

This improves **security and governance in GitOps workflows**.

---

# 🎯 What is RBAC?

RBAC (Role-Based Access Control) is a mechanism used to:

- Assign permissions to roles  
- Assign roles to users or groups  

Instead of giving permissions directly to users, RBAC uses **roles as an intermediate layer**.

---

# ⚙️ How RBAC Works in ArgoCD

ArgoCD RBAC works using policies defined in a configuration file.

The workflow looks like this:

1️⃣ Define roles (admin, developer, viewer)  
2️⃣ Assign permissions to roles  
3️⃣ Map users or groups to roles  
4️⃣ ArgoCD enforces access control  

---

# 🧩 Key Components of RBAC

---

## 👤 Users / Groups

These are the identities that access ArgoCD.

Examples:

- Individual users  
- Teams (Dev, QA, Ops)  
- External authentication providers (GitHub, LDAP)

---

## 🏷️ Roles

Roles define what actions are allowed.

Examples:

- admin → Full access  
- developer → Deploy applications  
- viewer → Read-only access  

---

## 📜 Policies

Policies define permissions in the format:

```
p, role, resource, action, object, effect
```

Example:

```
p, role:developer, applications, sync, *, allow
```

This means the developer role can sync applications.

---

# 🔐 Common Permissions

ArgoCD supports various permissions.

Some important ones:

- get → View applications  
- create → Create resources  
- update → Modify resources  
- delete → Remove resources  
- sync → Trigger deployment  

---

# 🔄 RBAC Workflow Example

Example scenario:

1️⃣ Admin defines roles and policies  
2️⃣ Developer logs into ArgoCD  
3️⃣ RBAC checks permissions  
4️⃣ Developer can only perform allowed actions  

This ensures **secure and controlled access**.

---

# 📦 Example Use Case

In a company:

- Dev Team → Can deploy applications  
- QA Team → Can view applications  
- Admin Team → Full control  

RBAC ensures each team has **limited and secure access**.

---

# 🚀 Benefits of RBAC in ArgoCD

Using RBAC provides:

- Strong security control  
- Restricted access to critical operations  
- Better team collaboration  
- Compliance with organizational policies  
- Reduced risk of accidental changes  

---

# 📌 Best Practices

- Use least privilege principle  
- Create separate roles for teams  
- Avoid giving admin access to everyone  
- Regularly review access permissions  
- Integrate with identity providers (SSO)

---

# 🏁 Summary

ArgoCD RBAC is used to control access to applications and resources.

It works by:

- Defining roles  
- Assigning permissions  
- Mapping users to roles  

RBAC ensures **secure, controlled, and organized GitOps workflows**.

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