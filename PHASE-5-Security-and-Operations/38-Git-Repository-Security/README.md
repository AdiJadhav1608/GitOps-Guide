# 🔐 Git Repository Security

## 🧠 Introduction

In GitOps, the Git repository is the **Single Source of Truth**.  
This means any change in Git directly impacts your infrastructure and applications.

If your repository is compromised, your entire system is at risk.

👉 Therefore, securing Git repositories is **critical for a safe GitOps workflow**.

---

# 🎯 Why Git Repository Security Matters

- Stores infrastructure configurations  
- Controls deployment pipelines  
- Contains sensitive configurations (sometimes)  

A small mistake can lead to:

- Unauthorized deployments  
- Data breaches  
- System downtime  

---

# 🔐 Core Git Repository Security Practices

---

## 🛡️ Enable Branch Protection Rules

- Prevent direct commits to main branch  
- Require pull requests (PRs)  
- Enforce code reviews before merging  

---

## 👥 Use Role-Based Access Control

- Give access based on roles  
- Limit write access to trusted users  
- Avoid giving admin rights to everyone  

---

## 🔑 Use Strong Authentication

- Enable Multi-Factor Authentication (MFA)  
- Use SSH keys instead of passwords  
- Rotate access tokens regularly  

---

## ✍️ Enforce Signed Commits

- Use GPG signing for commits  
- Verify commit authenticity  
- Prevent unauthorized code injection  

---

## 🔍 Audit Logs and Monitoring

- Track all repository activities  
- Monitor commits, merges, and access  
- Detect suspicious behavior early  

---

# 🔒 Protect Sensitive Data

---

## ❌ Never Store Secrets in Git

Avoid storing:

- API keys  
- Passwords  
- Tokens  

---

## ✅ Use Secure Alternatives

- Sealed Secrets  
- External Secrets Operator  
- Secret management tools  

---

## 🔎 Use Secret Scanning Tools

- Detect exposed secrets automatically  
- Use tools like GitHub Secret Scanning  
- Integrate scanning into CI/CD  

---

# ⚙️ Secure Pull Request Workflow

- Require at least one approval  
- Enforce status checks before merge  
- Use automated testing pipelines  
- Restrict force push  

---

# 🚀 Repository Hardening Techniques

- Disable unused branches  
- Limit repository visibility (private/public)  
- Regularly review collaborators  
- Remove inactive users  

---

# ⚠️ Common Mistakes

- Public repository with sensitive data  
- Weak passwords or no MFA  
- Direct commits to production branch  
- No monitoring or logging  
- Over-permissioned users  

---

# 🔥 Advanced Security Practices

- Use GitHub Actions securely (no secret leaks)  
- Enable Dependabot for dependency updates  
- Implement policy checks (OPA)  
- Use organization-level security policies  

---

# 📌 Real-World Example

A secure Git repository setup includes:

- Protected main branch  
- Mandatory PR approvals  
- Enabled MFA for all users  
- Secret scanning enabled  
- Limited admin access  

👉 This ensures safe and controlled GitOps deployments  

---

# 🏁 Summary

Git repository security is the foundation of GitOps security.

By implementing:

- Branch protection  
- Strong authentication  
- Secret management  
- Audit logging  

You can prevent unauthorized changes and ensure a **secure DevOps pipeline**.

---

# 🤝 Contribute
Add more commands, diagrams, or revision notes to help learners revise Docker faster.

---

