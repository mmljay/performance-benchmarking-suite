# 🧪 Performance Benchmarking Suite

A professional-grade performance testing framework designed to establish **API performance baselines** and monitor SLA compliance across releases.  
Developed using **Apache JMeter** and ready for CI/CD integration via Jenkins.

---

## 🚀 Overview

This project provides a structured, reusable setup for running both **Smoke** and **Baseline Performance Tests** on RESTful APIs.

### Key Highlights
- **Smoke Tests** for quick endpoint verification  
- **Baseline Load Tests** (10 concurrent users, 30s duration)  
- **Response Time SLA enforcement** (< 1000 ms)  
- **Fully automated CLI execution**  
- **HTML performance dashboards** generated automatically  

---

## 🧩 Project Structure

performance-benchmarking-suite/
│
├── jmeter/
│ ├── plans/ # Test plans (.jmx)
│ │ ├── smoke_test.jmx
│ │ └── baseline_test.jmx
│ ├── results/ # .jtl raw results
│ ├── reports/ # HTML dashboards
│ └── data/ # CSV input files (e.g., user data)
│
├── scripts/
│ ├── run_smoke.sh
│ ├── run_baseline.sh
│ └── compare_baseline.sh
│
├── docs/
│ ├── SLA_profile.md
│ ├── baseline_methodology.md
│ └── report_readme.md
│
├── ci/
│ └── Jenkinsfile
│
└── README.md


---

## 🧰 Tools & Technologies
| Tool | Purpose |
|------|----------|
| **Apache JMeter 5.6.3** | Core performance testing |
| **Bash Scripts** | Automated test execution |
| **Jenkins** | CI/CD pipeline integration |
| **HTML Reports** | Real-time performance analytics |
| **GitHub Actions (optional)** | CI for cloud-based load tests |

---

## 📈 Example Metrics
| Metric | Smoke Test | Baseline Test |
|--------|-------------|---------------|
| Avg Response Time | 197 ms | 180 ms |
| Max Response Time | 578 ms | 400 ms |
| Error % | 0.00% | 0.00% |
| SLA | Passed | Passed |

*(Generated from JSONPlaceholder `/users` API endpoint)*

---

## ⚙️ How to Run

### 🟢 Smoke Test
```bash
./scripts/run_smoke.sh

🖼️ Example Dashboards
🟢 Smoke Test

🟠 Baseline Test
