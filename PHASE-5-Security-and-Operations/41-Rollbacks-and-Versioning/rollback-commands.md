# 🔧 Rollback Commands Reference

## 🧾 Git Rollback Commands

### 🔙 Revert Last Commit

```
git revert HEAD
```

Creates a new commit that undoes the last change.

---

### 🔙 Revert Specific Commit

```
git revert <commit-id>
```

Reverts a specific commit safely.

---

### 🔙 Checkout Previous Version

```
git checkout <commit-id>
```

Moves to a specific version (detached HEAD state).

---

### 🔙 Reset to Previous State (Use Carefully)

```
git reset --hard <commit-id>
```

⚠️ Deletes changes permanently.

---

## ⚙️ Kubernetes Rollback Commands

### 🔄 Check Deployment History

```
kubectl rollout history deployment <deployment-name>
```

---

### 🔙 Rollback Deployment

```
kubectl rollout undo deployment <deployment-name>
```

---

### 🔙 Rollback to Specific Revision

```
kubectl rollout undo deployment <deployment-name> --to-revision=<number>
```

---

## ⛵ Helm Rollback Commands

### 🔍 Check Release History

```
helm history <release-name>
```

---

### 🔙 Rollback Helm Release

```
helm rollback <release-name> <revision>
```

---

# 📌 Notes

- Always verify before rollback  
- Prefer Git-based rollback in GitOps  
- Avoid manual cluster changes  

---

# 🏁 Conclusion

These commands help you quickly recover from failures and maintain stable deployments using GitOps practices.