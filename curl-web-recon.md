# cURL Documentation (Cybersecurity & Web Testing)

## 📌 Introduction

**cURL (Client URL)** is a powerful command-line tool used to transfer data between a client and a server using various network protocols. In cybersecurity, cURL is widely used for **manual web reconnaissance, enumeration, API testing, and debugging HTTP requests**.

This documentation provides a clear and beginner-friendly overview of cURL, its usage, and its importance in ethical hacking and web security testing.

---

## 🧠 What is cURL?

* cURL stands for **Client URL**
* It is a **command-line tool**, not a browser
* Used to send and receive data using URLs
* Works on **Linux, Windows, and macOS**

### Supported Protocols

* HTTP / HTTPS
* FTP / FTPS
* SCP / SFTP
* SMTP / POP3 / IMAP
* LDAP

---

## 🔍 Why cURL is Important in Cybersecurity

cURL is commonly used during the **reconnaissance and enumeration phases** of penetration testing.

It helps security professionals to:

* Inspect HTTP headers
* Test authentication mechanisms
* Analyze cookies and sessions
* Replay HTTP requests
* Bypass basic security filters
* Understand how web applications behave internally

---

## 🛠️ Basic cURL Syntax

```bash
curl [options] <URL>
```

Example:

```bash
curl http://example.com
```

---

## 🔹 Commonly Used cURL Commands

### 1️⃣ HTTP GET Request

Fetch content from a web server:

```bash
curl http://example.com
```

---

### 2️⃣ View HTTP Headers Only

```bash
curl -I http://example.com
```

Used for **banner grabbing** and server fingerprinting.

---

### 3️⃣ View Headers + Body

```bash
curl -i http://example.com
```

---

### 4️⃣ HTTP POST Request

Send form data to a server:

```bash
curl -X POST -d "username=admin&password=admin" http://example.com/login.php
```

---

### 5️⃣ Send JSON Data

```bash
curl -X POST -H "Content-Type: application/json" \
-d '{"username":"admin","password":"admin"}' http://example.com/api/login
```

---

### 6️⃣ Save Response Output to a File

```bash
curl -o output.html http://example.com
```

---

### 7️⃣ Follow Redirects

```bash
curl -L http://example.com
```

---

## 🍪 Cookie and Session Handling

### Save Cookies

```bash
curl -c cookies.txt -d "username=admin&password=admin" http://example.com/login.php
```

### Reuse Cookies

```bash
curl -b cookies.txt http://example.com/dashboard.php
```

Used in **session replay testing**.

---

## 🧪 Authentication Testing

### Basic Authentication

```bash
curl -u admin:admin http://example.com
```

---

## 🕵️ User-Agent Spoofing

Some web applications block default cURL requests.

### Default Request

```bash
curl http://example.com
```

### Custom User-Agent

```bash
curl -A "Mozilla/5.0" http://example.com
```

Used to bypass **User-Agent based filtering**.

---

## 🔁 Brute Force Logic (Example)

```bash
for pass in $(cat passwords.txt); do
  curl -s -X POST -d "username=admin&password=$pass" http://example.com/login.php
 done
```

⚠️ For educational and authorized environments only.

---

## 🧩 cURL in Penetration Testing Lifecycle

| Phase             | Usage     |
| ----------------- | --------- |
| Reconnaissance    | ✔ Yes     |
| Enumeration       | ✔ Yes     |
| Exploitation      | ❌ Limited |
| Post-Exploitation | ❌ No      |

---

## ⚠️ Legal Disclaimer

This documentation is intended for **educational purposes only**. All commands should be used **only on systems you own or have explicit permission to test**.

---

## 🎯 Conclusion

cURL is a simple yet extremely powerful tool for understanding web communication. Mastering cURL helps build a strong foundation for tools like **Burp Suite, Hydra, WFuzz, and Postman**, making it an essential skill for anyone learning cybersecurity.

---

## 👨‍💻 Author

**Balamutugan**
Cybersecurity & Ethical Hacking Enthusiast
TryHackMe Learner 🚀

---


