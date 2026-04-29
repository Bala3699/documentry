# 🛡️ CyberSentinel

### A Real-Time Cybersecurity Framework for System Protection, IDS/IPS, File Security and Steganographic Data Concealment

## Overview

CyberSentinel is a Python-based integrated cybersecurity framework designed to provide layered defense for endpoint and network security. The framework combines real-time monitoring, intrusion detection and prevention, Suricata-assisted threat detection, phishing URL analysis, file encryption/decryption, steganographic data concealment, and multi-factor authentication in a single platform.

CyberSentinel was developed as a practical security prototype and research project focused on detecting, analyzing, and responding to cyberattacks in real time.

---

# 🚀 Features

## 1. System Security Monitoring

### Process Monitoring

* Real-time process discovery
* Suspicious process observation
* PID tracking
* Resource activity visibility

### File System Monitoring

* File creation detection
* File modification alerts
* File deletion monitoring
* Recursive directory monitoring

Implemented using:

* Python
* psutil
* watchdog

---

## 2. Custom IDS/IPS Engine

CyberSentinel includes a rule-based Intrusion Detection and Prevention System capable of:

### Detection Capabilities

* ICMP Flood Detection
* TCP SYN Flood Detection
* UDP Flood Detection
* Port Scan Detection
* Suspicious Port Activity Detection
* Malicious Payload Keyword Detection
* Known Malicious IP Detection
* Brute Force Activity Indicators
* Man-in-the-Middle (ARP Spoofing) Detection

### IPS Response

* Real-time attack alerts
* Automatic source IP blocking
* Auto-unblock timer mechanism
* Firewall rule insertion
* Attack popup notification system

### Detection Logic Includes

* Threshold-based anomaly detection
* Signature matching
* Packet inspection
* Payload regex analysis
* Behavioral rule monitoring

---

## 3. Suricata Integration

Integrated with Suricata for advanced network threat detection.

## Capabilities

* Live Suricata monitoring
* Rule-based attack detection
* Event log parsing
* Security alert popups
* Suricata rule updates
* Attack severity classification
* Test alert injection
* Rule statistics visualization

### Severity Levels

* High
* Medium
* Low

### Sample Threats Detected

* Generic protocol command decode
* SYN anomalies
* Flood behavior
* DNS anomalies
* Suspicious traffic signatures
* MITM indicators

---

## 4. Phishing URL Detection Module

CyberSentinel contains a phishing detection engine using feature extraction.

## Extracted Features Include

* IP based URLs
* URL length anomalies
* Shortened URL detection
* @ symbol abuse
* Redirect abuse
* Prefix/suffix misuse
* Subdomain abuse
* HTTPS anomalies
* Domain age checks
* WHOIS analysis
* Favicon analysis
* Form action analysis
* External link ratios
* Iframe detection
* Popup abuse indicators
* Domain reputation heuristics

## Classification

URLs are classified as:

* Safe
* Suspicious
* Phishing

---

## 5. File Encryption and Steganography

CyberSentinel includes privacy protection mechanisms:

## Encryption Features

* File embedding
* Secret data concealment
* Hidden payload extraction
* Secure carrier file mechanism

## Steganographic Concept

Secret files can be embedded inside carrier files and later extracted securely.

---

## 6. Multi-Factor Authentication

CyberSentinel uses layered authentication:

* Password Authentication
* OTP Verification
* QR based authenticator setup
* Master Key Recovery
* Password Reset Security

Implemented using:

* pyotp
* QR code authentication

---

# Architecture

## Security Layers

```text
User Authentication Layer
        |
System Monitoring Layer
        |
Custom IDS/IPS Layer
        |
Suricata Detection Layer
        |
Phishing Analysis Layer
        |
Encryption & Steganography Layer
```

Layered defense model provides defense-in-depth.

---

# Technologies Used

## Languages

* Python 3
* Bash

## Libraries

* Tkinter
* psutil
* watchdog
* scapy
* cryptography
* pyotp
* qrcode
* requests
* BeautifulSoup
* python-whois
* numpy
* PIL

## Security Tools

* Suricata
* Nmap
* hping3
* Hydra
* arpspoof
* Netcat

---

# 🧪 Experimental Validation

CyberSentinel was validated in a controlled Kali Linux test environment.

## Attacks Simulated

## Reconnaissance Attacks

```bash
nmap target
nmap -A -sV target
nmap -p- target
```

Detected:

* Port scans
* Service enumeration
* Recon activity

---

## Flood Attacks

```bash
ping -f target
hping3 -S --flood -p 445 target
hping3 --udp --flood -p 53 target
```

Detected:

* ICMP Flood
* SYN Flood
* UDP Flood

---

## Payload Attacks

```bash
echo "malware attack exploit" | nc target 80
```

Detected:

* Malicious keyword payloads
* Payload inspection alerts

---

## Brute Force Simulation

```bash
hydra -l user -P rockyou.txt ssh://target
```

Detected:

* Brute force indicators

---

## MITM Attack Simulation

```bash
arpspoof -t victim gateway
```

Detected:

* ARP Spoofing
* MITM behavior
* Attack alert generation
* Source blocking

---

# 📊 Results

## Observed During Testing

* Real-time packet analysis exceeded 30,000 packets
* Live attack detection achieved
* Automatic IP blocking triggered
* Suricata alert correlation successful
* MITM detection validated
* Multi-vector attack detection demonstrated

## Summary

CyberSentinel successfully detected:

| Attack Type       | Detection | Blocking |
| ----------------- | --------- | -------- |
| Port Scan         | Yes       | Yes      |
| ICMP Flood        | Yes       | Yes      |
| SYN Flood         | Yes       | Yes      |
| UDP Flood         | Yes       | Yes      |
| Malicious Payload | Yes       | Yes      |
| Brute Force       | Yes       | Partial  |
| MITM / ARP Spoof  | Yes       | Yes      |

---

# Project Screens

Add screenshots here:

```text
screenshots/
 ├── login.png
 ├── ids_monitor.png
 ├── suricata_alert.png
 ├── mitm_detection.png
 └── phishing_checker.png
```

Example:

```md
![IDS Monitor](screenshots/ids_monitor.png)
```

---

# ⚙️ Installation

## Clone Repository

```bash
git clone https://github.com/yourusername/CyberSentinel.git
cd CyberSentinel
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

Example requirements:

```text
psutil
watchdog
scapy
cryptography
pyotp
qrcode
pillow
requests
beautifulsoup4
python-whois
numpy
```

---

## Install Suricata

Ubuntu/Kali:

```bash
sudo apt update
sudo apt install suricata
```

Verify:

```bash
suricata --build-info
```

---

# Run CyberSentinel

```bash
python3 cybersentinel.py
```

Run as administrator/root for:

* Packet sniffing
* Firewall blocking
* Suricata integration

---

# ▶️ Usage

## Start Modules

Use GUI to launch:

* Process Monitor
* File Monitor
* Network Monitor
* IDS/IPS
* Suricata
* URL Checker
* Encryption
* Decryption

---

# Repository Structure

```text
CyberSentinel/
│
├── cybersentinel.py
├── alert.sh
├── trigger.sh
├── requirements.txt
├── README.md
├── screenshots/
└── docs/
```

---

# 💡 Novel Contributions

CyberSentinel contributes:

* Unified security framework
* Dual-layer IDS architecture
* Real-time detection and prevention
* Integrated encryption plus steganography
* Phishing analysis module
* Automated attack response
* MITM detection with blocking

Unlike standalone IDS tools, CyberSentinel combines multiple defensive layers into one framework.

---

# Limitations

Current prototype limitations:

* Rule-based detection can be expanded
* Machine learning detection can be added
* Linux-focused deployment
* Advanced behavioral analytics can improve coverage

---

# 🔮 Future Enhancements

Planned improvements:

* Machine Learning Intrusion Detection
* Threat Intelligence Feeds
* SIEM Integration
* Endpoint Agent Architecture
* Cloud Deployment
* Zero Trust Extensions
* AI-driven Anomaly Detection
* Advanced Forensics Module

---

# Research Publication

Paper Title:
**CYBERSENTINAL: A REAL-TIME CYBERSECURITY FRAMEWORK FOR SYSTEM PROTECTION, FILE ENCRYPTION/DECRYPTION AND STEGANOGRAPHIC DATA CONCEALMENT**

Conference:
ICAMC 2026

---

# ⚠️ Security Disclaimer

This project is for:

* Academic research
* Defensive security testing
* Authorized lab environments only

Do not use attack scripts against unauthorized systems.

---

# Demo Attack Scripts

Example:

```bash
chmod +x alert.sh
./alert.sh
```

---

# Example Detection Workflow

```text
Attack Launched
   ↓
Packet Captured
   ↓
IDS/Suricata Analysis
   ↓
Threat Signature Matched
   ↓
Alert Generated
   ↓
IP Blocked
```

---

# Performance Highlights

* Real-time monitoring
* Layered defense model
* Automated response
* Attack validation tested
* Practical prototype implementation

---

# 👨‍💻 Author

Balamurugan P
Cybersecurity Research | Network Security | Ethical Hacking

---

# License

MIT License

```text
Copyright (c) 2026
Permission is hereby granted, free of charge...
```

---

# Citation

If you use this project in research:

```bibtex
@conference{cybersentinel2026,
 title={CyberSentinel: A Real-Time Cybersecurity Framework for System Protection},
 author={Balamurugan, P},
 booktitle={ICAMC},
 year={2026}
}
```

---

# 🙏 Acknowledgements

Tools and frameworks used:

* Suricata Community
* Python Security Libraries
* Open Source Security Community
* Kali Linux Testing Tools

---

## Star the repository if you find CyberSentinel useful.

🛡️ CyberSentinel — Detect | Defend | Protect
