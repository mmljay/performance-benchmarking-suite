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
├── jmeter/                              # Core JMeter testing assets
│   ├── plans/                           # Test plan definitions (.jmx)
│   │   ├── smoke_test.jmx               # Quick sanity test for API uptime
│   │   └── baseline_test.jmx            # Performance baseline under moderate load
│   │
│   ├── results/                         # Raw JMeter .jtl output files
│   ├── reports/                         # Auto-generated HTML performance dashboards
│   └── data/                            # Input CSVs (e.g., test users, payloads)
│
├── scripts/                             # CLI automation scripts
│   ├── run_smoke.sh                     # Runs smoke test and generates report
│   ├── run_baseline.sh                  # Executes baseline load test
│   └── compare_baseline.sh              # (Optional) Compares two baseline runs for drift
│
├── docs/                                # Documentation and QA process assets
│   ├── SLA_profile.md                   # SLA definitions and thresholds
│   ├── baseline_methodology.md          # Baseline creation methodology
│   ├── report_readme.md                 # Report interpretation guide
│   ├── smoke_dashboard_preview.png      # Screenshot of smoke test report
│   └── baseline_dashboard_preview.png   # Screenshot of baseline report
│
├── ci/                                  # CI/CD integration files
│   └── Jenkinsfile                      # Jenkins pipeline automation
│
└── README.md                            # Main project overview and setup instructions



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
