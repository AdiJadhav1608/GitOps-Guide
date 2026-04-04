# OPA Policy Example - Deny Privileged Containers

package kubernetes.admission

# Deny rule: Blocks deployment if container runs in privileged mode
deny[msg] {
  input.request.kind.kind == "Pod"
  container := input.request.object.spec.containers[_]
  container.securityContext.privileged == true
  msg := "Privileged containers are not allowed"
}

# Enforce resource limits
deny[msg] {
  input.request.kind.kind == "Pod"
  container := input.request.object.spec.containers[_]
  not container.resources.limits
  msg := "Resource limits must be defined"
}

# Require labels
deny[msg] {
  input.request.kind.kind == "Pod"
  not input.request.object.metadata.labels
  msg := "Labels are required for all resources"
}