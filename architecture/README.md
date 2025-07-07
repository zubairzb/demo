# Cloud & DevOps Architecture

This document presents a complete system architecture, traffic flow, and CI/CD pipeline using AWS EKS, GitHub Actions, and ArgoCD.

---

## System Architecture

![System Architecture](./system-arch.png)

This diagram shows:
- Public access app via AWS ALB
- EKS hosting application workloads
- MongoDB hosted on EC2
- ECR for Docker image pulls
- GitHub Actions + ArgoCD for GitOps delivery

---

## Traffic Flow

![Traffic Flow](./traffic-flow.png)

**Flow Explanation:**

- DNS handled via **GoDaddy**
- Requests routed through **AWS ALB**
- Ingress managed by **NGINX**
- Backend application pods communicate with MongoDB

---

## CI/CD Process

![CI/CD Pipeline](./ci-cd.png)

**Two Pipelines:**

- **Application Delivery:**
  - Code → Docker build → ECR → GitOps Repo → ArgoCD sync

- **Infrastructure Delivery:**
  - Terraform Plan → Apply

---

