# 🔎 Kubernetes Manifest Breakdown

This file explains **each part of a Kubernetes deployment manifest in detail**.

---

# 📜 Example Deployment Manifest

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx

spec:
  replicas: 3

  selector:
    matchLabels:
      app: nginx

  template:
    metadata:
      labels:
        app: nginx

    spec:
      containers:
      - name: nginx
        image: nginx:1.25
        ports:
        - containerPort: 80
```

---

# 🔹 apiVersion

```
apiVersion: apps/v1
```

This tells Kubernetes which **API version** should manage the resource.

Example API groups:

- apps/v1 → Deployments
- v1 → Pods, Services, ConfigMaps
- networking.k8s.io/v1 → Ingress

---

# 🔹 kind

```
kind: Deployment
```

Defines the **type of Kubernetes object** being created.

Other examples:

- Pod
- Service
- ConfigMap
- Secret

---

# 🔹 metadata

```
metadata:
  name: nginx-deployment
  labels:
    app: nginx
```

Metadata provides identifying information about the resource.

Common fields include:

- name → Resource name
- namespace → Environment or isolation
- labels → Used for grouping and selectors

---

# 🔹 spec

```
spec:
  replicas: 3
```

Spec defines the **desired state of the resource**.

For deployments it includes:

- replica count
- pod template
- container configuration

---

# 🔹 selector

```
selector:
  matchLabels:
    app: nginx
```

Selector identifies **which pods belong to the deployment**.

Kubernetes uses labels to match pods with services and deployments.

---

# 🔹 template

```
template:
  metadata:
    labels:
      app: nginx
```

The template defines **how pods should be created**.

This includes:

- labels
- containers
- volumes
- environment variables

---

# 🔹 containers

```
containers:
- name: nginx
  image: nginx:1.25
```

Container section defines:

- container name
- container image
- ports
- environment variables
- resource limits

---

# 🔹 ports

```
ports:
- containerPort: 80
```

This specifies which port the container exposes.

Services use this port to route traffic to pods.

---

# 📌 Key Takeaway

A Kubernetes manifest defines the **desired state of infrastructure**.

GitOps continuously ensures:

```
Git State = Kubernetes Cluster State
```

If any drift occurs, GitOps tools automatically reconcile the difference.

---