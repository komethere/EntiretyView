# EntiretyView

EntiretyView is an advanced Open Source Intelligence (OSINT) lookup utility engineered to help investigators, security researchers, and privacy professionals aggregate public profile data and trace geographic footprints. It uses many other tools merged into one to, fetch data from several social media platforms, find the location of images using https://github.com/sparkyniner/Netryx-Astra-V2-Geolocation-Tool, and much more.

---

## Key Features

*  **Social Media Lookup:** Scan multiple social networks to locate user profiles, linked handles, and hidden accounts.
*  **Geolocation tool:**  We use multiple othe 
*  **Identity Contextualization:** Synthesize disparate open-source signals into a unified informational profile.
*  **Cross-Platform Installers:** Native automation scripts provided out of the box for Linux, macOS, and Windows.

---

## Repository Structure

```text
EntiretyView/
├── EntiretyView/             # Core application assets
│   ├── script.py             # Main application entry point
│   ├── requirements.txt      # Project library dependencies
│   └── .venv/                # Isolated environment (Generated on setup)
├── install.sh                # Linux & macOS installer script
└── install.bat               # Windows batch installer script
```

---

## Automated Setup

We supply cross-platform deployment modules that handle system workspace creation, dependencies management, and virtual environment provisioning seamlessly.

###  On Linux & macOS
1. Open your native shell terminal.
2. Change directory into EntiretyView & Grant executing privileges to the installation module:
   ```bash
   cd EntiretyView
   chmod +x install.sh
   
   ```
3. Initialize the setup script:
   ```bash
   ./install.sh
   ```

###  On Windows
1. Launch an administrative Command Prompt (`cmd`).
2. Run the deployment sequence directly:
   ```cmd
   install.bat
   ```

> 💡 **Tip:** Selecting **`Y`** (Yes) during the automated prompt creates an isolated virtual environment (`.venv`) directly within your working directory to protect global environment values.

---

## Manual Quick Start

If you prefer to install dependencies manually without using the automation scripts, follow these steps:

1. **Clone and Enter Repository:**
   ```bash
   cd EntiretyView
   ```
2. **Build and Activate Environment:**
   ```bash
   python3 -m venv EntiretyView/.venv
   source EntiretyView/.venv/bin/activate    # On Windows use: .\EntiretyView\.venv\Scripts\activate.bat
   ```
3. **Download Module Requisites:**
   ```bash
   pip install -r EntiretyView/requirements.txt
   ```
4. **Launch Application:**
   ```bash
   python3 EntiretyView/script.py
   ```

---

## Authors & Contributors

* Maintained and developed by **@holyarii** & **@komethere**

---

## Legal Disclaimer

EntiretyView is built strictly for authorized security auditing, educational research, personal data awareness mapping, and ethical investigative techniques. The developers assume no responsibility for malicious usage, digital profiling without consent, or violations of individual social media platform terms of service.
