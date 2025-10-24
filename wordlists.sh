#!/bin/bash
set -e
WORDLIST_DIR="/opt/wordlists"
ROCKYOU_URL="https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt"
USERNAMES_REPO="https://github.com/insidetrust/statistically-likely-usernames.git"
SECLISTS_REPO="https://github.com/danielmiessler/SecLists.git"

sudo mkdir -p "$WORDLIST_DIR"
echo "[+] Downloading rockyou.txt"
sudo curl -L "$ROCKYOU_URL" -o "$WORDLIST_DIR/rockyou.txt" --progress-bar

echo "[+] Downloading statistically-likely-usernames"
sudo git clone "$USERNAMES_REPO" "$WORDLIST_DIR/statistically-likely-usernames"

echo "[+] Downloading SecLists"
sudo git clone "$SECLISTS_REPO" "$WORDLIST_DIR/SecLists"
