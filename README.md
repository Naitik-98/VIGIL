<div align="center">

#  VIGIL
### *Your PC's Silent Guardian*

**A modern desktop application for PC maintenance management, live system monitoring, and data-driven analytics.**

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python)
![Tkinter](https://img.shields.io/badge/GUI-Tkinter-green?style=for-the-badge)
![psutil](https://img.shields.io/badge/Monitoring-psutil-orange?style=for-the-badge)
![NumPy](https://img.shields.io/badge/Analytics-NumPy-purple?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-lightgrey?style=for-the-badge)

</div>


Download from: [here](https://github.com/Naitik-98/VIGIL/releases/download/v0.0.2/main.exe)
---

## 📖 Overview

VIGIL is a **local-first desktop application** built with Python and Tkinter that helps you maintain your PC through:

-  **Live system monitoring** — Real-time CPU, RAM, and Disk stats (like Task Manager)
-  **Preventive maintenance tracking** — Schedule and manage all your PC maintenance tasks
-  **Data-driven analytics** — NumPy-powered cost and compliance statistics
-  **Smart reminders** — Get alerted when tasks are due or overdue
-  **Beautiful dark/light UI** — Smooth animated theme transitions

---

##  Features

| Feature | Description |
|---|---|
| **Dashboard** | Live CPU, RAM, Disk usage, uptime, date/time — auto-updates every second |
| **Protection Center** | Full CRUD — Add, View, Search, and Filter maintenance tasks |
| **History** | Chronological audit log of all maintenance actions |
| **Analytics** | Compliance rate, cost stats (avg/high/low/total), task distribution |
| **Reminder Center** | Due soon & overdue tasks sorted by urgency |
| **Settings** | Dark mode, reminder days, autosave, data reset |
| **Theme Toggle** | ☀️/🌙 button with animated circular transition |

---

## 🚀 Quick Start

### 1. Requirements

- Python **3.10+**
- MySQL **8.0+**
- `tkinter` *(comes built-in with Python)*

---

### 2. Create the Database

Open **MySQL Workbench**, **XAMPP (phpMyAdmin)**, or any MySQL client and create a database named:

```sql
CREATE DATABASE vigil_db;
```

Then import the provided SQL file:

```text
vigil_db.sql
```

Or using the MySQL command line:

```bash
mysql -u root -p vigil_db < vigil_db.sql
```

> **Note:** Make sure the database name is **`vigil_db`** before importing the SQL file.

---

### 3. Install Dependencies

```bash
pip install psutil numpy mysql-connector-python
```

> **Note:** `mysql-connector-python` is required for MySQL connectivity, while `psutil` and `numpy` are recommended for live system statistics and analytics.

---

### 4. Run the Application

```bash
python main.py
```

## Project Structure

```text
VIGIL/
├── main.py                 # Application entry point
├── gui.py                  # User interface and views
├── theme.py                # UI themes, colors, and fonts
├── dashboard.py            # Live system metrics (psutil)
├── analytics.py            # NumPy analytics engine
├── manager.py              # Core business logic
├── domain.py               # Maintenance task data model
├── persistence.py          # Hybrid persistence (JSON + MySQL)
├── database.py             # MySQL database operations
├── validator.py            # Input validation
├── utils.py                # Shared utility functions
├── vigil_db.sql            # MySQL database schema
├── data/
│   └── maintenance.json    # Application settings
├── media/
│   └── *.png               # Logos and application assets
└── VIGIL_ROADMAP.md        # Development roadmap
```

## Architecture

VIGIL follows a clean **layered architecture**:

```text
┌─────────────────────────────────────┐
│   Presentation Layer                │
│   gui.py · theme.py                 │
├─────────────────────────────────────┤
│   Domain Layer                      │
│   manager.py · domain.py            │
├─────────────────────────────────────┤
│   Infrastructure Layer              │
│   persistence.py · database.py      │
│   dashboard.py · analytics.py       │
├─────────────────────────────────────┤
│   Cross-Cutting                     │
│   validator.py · utils.py           │
└─────────────────────────────────────┘
```

**Data Flow:**

```text
User Input → Validator → Manager → Persistence → MySQL / JSON → Analytics → UI
```

---

## Data Model

Each maintenance task stores:

| Field | Type | Description |
|---|---|---|
| `task_id` | `str` | Auto-generated unique ID |
| `component` | `str` | CPU, GPU, RAM, SSD, HDD, etc. |
| `maintenance_type` | `str` | Dust Cleaning, Driver Update, etc. |
| `last_service_date` | `date` | When it was last done |
| `next_service_date` | `date` | When it is due next |
| `cost` | `float` | Maintenance cost (0+) |
| `status` | `str` | Healthy / Due Soon / Overdue |
| `notes` | `str` | Optional extra details |

---

## Storage

VIGIL uses a **hybrid storage architecture**:

- **MySQL** stores:
  - Maintenance Tasks
  - Maintenance History

- **JSON (`data/maintenance.json`)** stores:
  - Application Settings
  - Theme Preferences
  - Reminder Configuration
  - Autosave Settings

This approach combines the reliability of a relational database with lightweight local configuration storage.

---

## Usage Tips

- **Add a task:** Protection Center → `+ Add Task`
- **Mark complete:** Select task → `Mark Done` (updates last service date)
- **Toggle theme:** Click ☀️/🌙 button in the top-right corner
- **Change reminder window:** Settings → Reminder Days slider
- **Before first launch:** Create the `vigil_db` database and import `vigil_db.sql`

##  Roadmap

See **[VIGIL_ROADMAP.md](VIGIL_ROADMAP.md)** for the full development checklist covering VIGIL (MVP) through VIGIL 2.1 (Professional Edition) and the VIGIL 3.0 future vision.

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

</div>
