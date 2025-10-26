# Git and GitHub: A Quick Guide

---

## Git: The Distributed Version Control System (DVCS)

**Git** is a **version control system (VCS)** that works on your **local machine** to record differences in files and folders, maintaining a historical record of each save (commit).

### Key Concepts

* **Distributed VCS:** Everyone gets a **full clone** of the repository, including its entire history. This is more robust than Centralized VCS, where losing the server means losing the history.
* **Data Model (Snapshots):** Git treats its data as a series of **snapshots** of a miniature filesystem. When you commit, Git takes a "picture" of all your files at that moment. Other VCS systems typically only store file-based changes.
* **Data Integrity (SHA-1):** Everything is **checksummed** using a **SHA-1 hash** before storage. Git refers to objects (like files) by their content's hash value, not their filename.

---

## GitHub: Remote Storage

**GitHub** is a **cloud-based platform** that provides **remote storage** for Git repositories, enabling sharing and collaborative code development.

---

## The Three States of a Git Project

A Git project is divided into three areas that reflect the status of your files:

1.  **Working Tree (Working Directory):** The single checkout of your project files where you actively modify code.
2.  **Staging Area:** A file that stores information about the selective changes that will be included in your **next commit**.
3.  **Git Directory (`.git`):** The core database where Git stores all the metadata and committed object history for your project. This is what is copied when you clone a repository.

### File Statuses

| Status | Definition |
| :--- | :--- |
| **Committed** | The file version is safely stored in the **Git Directory**. |
| **Staged** | The file has been modified and added to the **Staging Area**, ready for the next commit. |
| **Modified** | The file has been changed in the **Working Tree** but has **not yet been staged**. |

---

## The Basic Git Workflow

1.  Modify files in your **Working Tree**.
2.  **Selectively stage** the desired changes to the **Staging Area** (`git add .`).
3.  Perform a **commit**, which takes the staged snapshot and stores it permanently in the **Git Directory** (`git commit -m "..."`).

---

## Essential Git Commands

### Workflow Commands

| Command | Purpose |
| :--- | :--- |
| `git add .` | Stages modified and new files. |
| `git commit -m "A message..."` | Creates a permanent snapshot of the staged changes. |

### Remote Commands

| Command | Purpose |
| :--- | :--- |
| `git clone git@github.com:USER/REPO.git` | Creates a local copy of a remote repository. |
| `git push` (or `git push origin main`) | Uploads local committed changes to the remote repository. |

### Inspection Commands

| Command | Purpose |
| :--- | :--- |
| `git status` | Shows the current state of the working tree and staging area. |
| `git log` | Displays the historical record of all commits. |