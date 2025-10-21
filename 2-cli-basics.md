# Shell and Terminal Overview

## What is a Shell?
The **shell** is a program that enables us to send commands to the computer and receive output. It is also referred to as the **terminal** or **command line**.

### Components

| Component | Description | Examples |
|------------|--------------|-----------|
| **Terminal** | Displays input/output; allows you to interact with the shell | Ubuntu Terminal, Windows Terminal |
| **Shell** | Interprets commands; interfaces with OS kernel | Bash, Zsh, Fish |

### Advantages of Using a Shell
- High **action-to-keystroke ratio**
- Supports **automating repetitive tasks**
- Allows **access to networked machines**

***

# Basic Shell Commands

![ashell-command-syntaxext](images/shell-command-syntax.svg)

## System and Navigation Commands
- `whoami` – tells username
- `ls -F`
  - `/` indicates a folder
  - `@` indicates a link
  - `*` indicates an executable
- `ls --help` or `man ls` – view help documentation
- `cd ..` – move one directory backwards
- `cd -` – brings you back to previous directory
- `cd /` – brings you to the root directory

***

## File and Directory Commands
- `mkdir foo bar` – create multiple directories
- `touch filename` – create file
- `nano` – text editor
- `mv file1 file2 destination` – move two files at once
- `cp` – same as `mv` but copies instead of moving
- `cp -r` – to copy directories
- `cat` – allows us to create single or multiple files, view content of a file, concatenate files, and redirect output in terminal or files
- `man` – opens the manual for commands
- `grep` – stands for *global regular expression print*; searches files for lines that match a pattern and returns the result

***

## File Permissions
- `chmod ugo file` – changes permissions of file to ugo
  - **u**: user's permissions
  - **g**: group's permissions
  - **o**: everyone else's permissions
  - Values of u, g, and o can be any number between 0 and 7.

***

# Input/Output Redirection

### Append Output
- `>>` takes the standard output of the command on the left and **appends** it to the file on the right.
  - Example: `cat glaciers.txt >> rivers.txt`

### Take Input
- `<` takes the standard input from the file on the right and inputs it into the program on the left.
  - Example: `cat < lakes.txt`

### Pipe Output
- `|` is a “pipe”. It takes the standard output of the command on the left and **pipes** it as standard input to the command on the right.
  - Think of this as “command to command” redirection.
  - Example: `cat volcanoes.txt | wc`

***

# Wildcards

### The `*` Wildcard
Matches **zero or more characters**.
- Example: `*.pdb` matches all files ending with `.pdb` (like `ethane.pdb`, `propane.pdb`).
- Example: `p*.pdb` matches files starting with “p” (like `pentane.pdb`, `propane.pdb`).

### The `?` Wildcard
Matches **exactly one character**.
- Example: `?ethane.pdb` matches `methane.pdb` (but not `ethane.pdb`).
- Example: `*ethane.pdb` matches both `ethane.pdb` and `methane.pdb`.

### Combining Wildcards
- Example: `???ane.pdb` matches filenames with exactly three characters before `ane.pdb` (like `cubane.pdb`, `ethane.pdb`, `octane.pdb`).

***

# Keyboard Shortcuts
- `Ctrl + Shift + C / V` – copy and paste
- `Tab` – autocomplete

***

# Package Management
- `package` – unzip

***

# Visual References
![standard-filesystem-hierarchy](images/standard-filesystem-hierarchy.svg)
