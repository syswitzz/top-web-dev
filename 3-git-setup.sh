#!/usr/bin/env bash
# Setup Git, configure identity, and generate an SSH key (Ed25519)

set -Eeuo pipefail

# Usage: sudo ./setup-git.sh "Your Name" "you@example.com"
if [[ ${EUID} -ne 0 ]]; then
  echo "Please run as root: sudo $0 \"Your Name\" \"you@example.com\"" >&2
  exit 1
fi

if [[ $# -lt 2 ]]; then
  echo "Usage: sudo $0 \"Your Name\" \"you@example.com\"" >&2
  exit 2
fi

GIT_NAME="$1"
GIT_EMAIL="$2"

# Ensure non-interactive APT operations
export DEBIAN_FRONTEND=noninteractive

echo "[1/6] Updating system package lists..."
apt-get update -y

echo "[2/6] Upgrading installed packages (safe non-interactive)..."
apt-get -y dist-upgrade

echo "[3/6] Installing Git from official PPA (latest stable releases)..."
apt-get install -y software-properties-common
add-apt-repository -y ppa:git-core/ppa
apt-get update -y
apt-get install -y git

echo "[4/6] Configuring Git identity and defaults..."
sudo -u "$SUDO_USER" git config --global user.name "$GIT_NAME"
sudo -u "$SUDO_USER" git config --global user.email "$GIT_EMAIL"
sudo -u "$SUDO_USER" git config --global init.defaultBranch main
sudo -u "$SUDO_USER" git config --global pull.rebase false

echo "[5/6] Verifying Git installation and config..."
git --version
sudo -u "$SUDO_USER" git config --get user.name
sudo -u "$SUDO_USER" git config --get user.email

echo "[6/6] Generating SSH key (ed25519) if not present..."
USER_HOME="$(getent passwd "$SUDO_USER" | cut -d: -f6)"
SSH_DIR="$USER_HOME/.ssh"
KEY_PATH="$SSH_DIR/id_ed25519"

install -d -m 700 -o "$SUDO_USER" -g "$SUDO_USER" "$SSH_DIR"

if [[ -f "$KEY_PATH" || -f "${KEY_PATH}.pub" ]]; then
  echo "An SSH key already exists at $KEY_PATH(.pub); skipping generation." >&2
else
  # -q quiet, -N '' empty passphrase (change if desired), -C comment = email
  sudo -u "$SUDO_USER" ssh-keygen -t ed25519 -q -N "" -C "$GIT_EMAIL" -f "$KEY_PATH"
  echo "New SSH key generated."
fi

# Show public key so it can be added to GitHub/GitLab
echo
echo "Public key:"
sudo -u "$SUDO_USER" cat "${KEY_PATH}.pub"
echo
echo "Next: copy the above public key and add it to your Git hosting provider (SSH keys section)."
