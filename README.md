
# 🔐 Secure Upload Server - DevSecOps Pipeline

A secure, containerized **Flask-based file upload server** built with a modern **DevSecOps pipeline** using GitHub Actions, Docker, and Kubernetes.

## 🚀 Overview

This project demonstrates how to integrate **security checks** and **automation** throughout the CI/CD process, from **static analysis** to **container vulnerability scanning** to **SBOM generation and analysis**.

> CI/CD powered by **GitHub Actions**

---

## 🧱 Tech Stack

| Area              | Tool                             |
|-------------------|----------------------------------|
| Language          | Python (Flask)                   |
| Containerization  | Docker                           |
| Orchestration     | Kubernetes (with YAML manifests) |
| CI/CD             | GitHub Actions                   |
| SAST              | Bandit, Semgrep                  |
| Secrets Scanning  | Gitleaks                         |
| Image Scanning    | Trivy                            |
| SBOM              | Syft (generate), Grype (scan)    |
| Docker Linting    | Hadolint                         |
| K8s Linting       | KubeLinter                       |

---

## 📂 Folder Structure

```
upload-server/
├── app.py                   # Flask application
├── requirements.txt
├── Dockerfile               # Flask app container
├── k8s/                     # Kubernetes manifests
│   ├── deployment.yaml
│   └── service.yaml
└── .github/workflows/
    └── ci-cd.yaml           # GitHub Actions workflow
```

---

## 🔁 CI/CD Workflow Summary

**Trigger**: On push to `main` or any Pull Request

### 🔐 Security Checks in CI:
- ✅ **Bandit**: Python security linter
- ✅ **Semgrep**: Pattern-based SAST
- ✅ **Gitleaks**: Secrets scanning
- ✅ **Hadolint**: Dockerfile best practices
- ✅ **KubeLinter**: Kubernetes YAML linting
- ✅ **Trivy**: Docker image vulnerability scanning
- ✅ **Syft**: SBOM generation (SPDX format)
- ✅ **Grype**: Scan SBOM for vulnerabilities

---

## 🔧 How to Use

### 🐳 Build Docker Image

```bash
docker build -t upload-server:ci .
```

### 🧪 Run Locally

```bash
docker run -p 5000:5000 upload-server:ci
```

Access at: `http://localhost:5000`

### 🚀 Deploy to Kubernetes

Apply the manifests in the `k8s/` directory:

```bash
kubectl apply -f k8s/
```

---

## ✅ GitHub Actions Workflow Highlights

```yaml
# .github/workflows/ci-cd.yaml
name: Build and Secure CI

on:
  push:
    branches: [main]
  pull_request:
```

The pipeline runs:

- Python linting & security analysis
- Secrets detection
- Docker image build and scan
- SBOM creation and scanning
- Lint checks for Docker and K8s files

---

## 📝 SBOM Example

An SPDX-formatted Software Bill of Materials (`sbom.json`) is generated using Syft and stored in the build artifacts. This helps identify all open source dependencies used in the image.

---

## 📊 Reports and Results

| Tool      | Output |
|-----------|--------|
| Bandit    | CLI log with high/medium issues |
| Semgrep   | Security and code quality alerts |
| Gitleaks  | Redacted secrets report |
| Trivy     | Vulnerabilities by severity |
| Grype     | SBOM vulnerability match results |
| Hadolint  | Dockerfile best-practice issues |
| KubeLinter| Misconfigured Kubernetes YAMLs |

---

## 📌 Best Practices Implemented

- 🧪 Shift-left security in CI/CD
- ✅ Early detection of insecure code & secrets
- 🧱 Secure container image creation
- 📦 SBOM generation for supply chain transparency
- ⛑ Defense-in-depth with multiple tools

---

## 📃 License

MIT License



## 🔐 Built With DevSecOps Principles

> Automate early. Secure always. Ship confidently.
