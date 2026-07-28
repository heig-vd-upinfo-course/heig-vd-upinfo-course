#!/usr/bin/env bash
#
# sysinfo.sh - Display a summary of system information.
#
# This script gathers and displays information about the system, including:
#
# - Username and home directory
# - Operating system type and version
# - CPU architecture and model
# - Memory usage (total, used, free)
# - Storage usage (total, used, free) for the root filesystem
# - Current shell
# - Installed tools (SSH, Git, Docker, Docker Compose) and their versions
#
# Compatible with Linux and macOS (Bash or Zsh).
#
# Usage:
#   chmod +x sysinfo.sh
#   ./sysinfo.sh
#
# Disclaimer: Made with the help of Claude AI.

set -u

## Helpers
bytes_to_gb() {
    local bytes="$1"
    local gb=$((1024 * 1024 * 1024))

    local whole=$((bytes / gb))
    local rem=$((bytes % gb))
    local tenth=$(((rem * 10 + gb / 2) / gb))  # round to nearest tenth

    if [ "$tenth" -eq 10 ]; then
        whole=$((whole + 1))
        tenth=0
    fi

    printf "%s.%s GB" "$whole" "$tenth"
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

detect_package_managers() {
    local managers="apt dnf yum pacman zypper apk brew port"
    local found=""

    for pm in $managers; do
        if command_exists "$pm"; then
            found="${found}${found:+, }$pm"
        fi
    done

    echo "${found:-None detected}"
}

## Basic identity
USERNAME="$(id -un 2>/dev/null || whoami)"
HOME_DIR="$HOME"
CURRENT_SHELL="${SHELL:-Unknown}"

## OS type / version
OS_TYPE="$(uname -s)"
OS_VERSION="Unknown"

if [ "$OS_TYPE" = "Darwin" ]; then
    # Rename OS_TYPE to macOS for clarity
    OS_TYPE="macOS"

    PRODUCT_VERSION="$(sw_vers -productVersion 2>/dev/null)"
    MAJOR_VERSION="${PRODUCT_VERSION%%.*}"
    
    # Map the major macOS version to its marketing name.
    case "$PRODUCT_VERSION" in
        27.*) OS_NAME="Golden Gate" ;;
        26.*) OS_NAME="Tahoe" ;;
        15.*) OS_NAME="Sequoia" ;;
        14.*) OS_NAME="Sonoma" ;;
        13.*) OS_NAME="Ventura" ;;
        12.*) OS_NAME="Monterey" ;;
        11.*) OS_NAME="Big Sur" ;;
        *)    OS_NAME="Unknown" ;;
    esac

    OS_VERSION="macOS $OS_NAME ($PRODUCT_VERSION)"
elif [ "$OS_TYPE" = "Linux" ]; then
    if [ -r /etc/os-release ]; then
        OS_VERSION="$(grep -m1 '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"')"
        OS_VERSION="${OS_VERSION:-Linux (unknown distribution)}"
    else
        OS_VERSION="Linux (unknown distribution)"
    fi
fi

## Hardware (manufacturer / model / serial number)
HW_MANUFACTURER="Unknown"
HW_MODEL="Unknown"
HW_SERIAL="Unknown"

if [ "$OS_TYPE" = "macOS" ]; then
    HW_MANUFACTURER="Apple"
    HW_MODEL="$(sysctl -n hw.model 2>/dev/null)"

    # system_profiler is more complete (gives the marketing model name and
    # serial) but is slower; fall back gracefully if it's unavailable.
    if command_exists system_profiler; then
        HW_PROFILE="$(system_profiler SPHardwareDataType 2>/dev/null)"
        HW_MODEL_NAME="$(echo "$HW_PROFILE" | awk -F': ' '/Model Name/ {print $2}')"
        HW_SERIAL="$(echo "$HW_PROFILE" | awk -F': ' '/Serial Number/ {print $2}')"
        if [ -n "$HW_MODEL_NAME" ]; then
            HW_MODEL="$HW_MODEL_NAME ($HW_MODEL)"
        fi
    fi
elif [ "$OS_TYPE" = "Linux" ]; then
    HW_MANUFACTURER="$(cat "/sys/class/dmi/id/sys_vendor" 2>/dev/null)"
    HW_MODEL="$(cat "/sys/class/dmi/id/product_name" 2>/dev/null)"
    HW_SERIAL="$(cat "/sys/class/dmi/id/product_serial" 2>/dev/null)"

    if [ -z "$HW_SERIAL" ] || [ "$HW_SERIAL" = "Unknown" ]; then
        HW_SERIAL="Unknown (may require root privileges, e.g. sudo)"
    fi
fi

## CPU
CPU_ARCH="$(uname -m)"
CPU_MODEL="Unknown"

case "$CPU_ARCH" in
    i386|i486|i586|i686) CPU_TYPE="x86" ;;
    x86_64|amd64) CPU_TYPE="x64" ;;
    arm64|aarch64) CPU_TYPE="ARM" ;;
    *) CPU_TYPE="$CPU_ARCH" ;;
esac

if [ "$OS_TYPE" = "macOS" ]; then
    CPU_MODEL="$(sysctl -n machdep.cpu.brand_string 2>/dev/null)"
elif [ "$OS_TYPE" = "Linux" ]; then
    CPU_MODEL="$(grep -m1 'model name' /proc/cpuinfo 2>/dev/null | sed 's/^.*: //')"
    
    # Some ARM Linux systems don't expose "model name"; try "Model" instead.
    if [ -z "$CPU_MODEL" ]; then
        CPU_MODEL="$(grep -m1 'Model' /proc/cpuinfo 2>/dev/null | sed 's/^.*: //')"
    fi
fi

## Memory
MEM_TOTAL="Unknown"
MEM_USED="Unknown"
MEM_FREE="Unknown"

if [ "$OS_TYPE" = "macOS" ]; then
    MEM_TOTAL_BYTES="$(sysctl -n hw.memsize 2>/dev/null)"
    MEM_TOTAL="$(bytes_to_gb "$MEM_TOTAL_BYTES")"

    # Compute used memory from vm_stat (pages are 4096 bytes on modern macOS).
    PAGE_SIZE="$(vm_stat | head -n1 | grep -o '[0-9]\+')"
    PAGE_SIZE="${PAGE_SIZE:-4096}"
    VM_STAT_OUT="$(vm_stat)"
    PAGES_ACTIVE="$(echo "$VM_STAT_OUT" | awk '/Pages active/ {gsub("\\.",""); print $3}')"
    PAGES_WIRED="$(echo "$VM_STAT_OUT" | awk '/Pages wired down/ {gsub("\\.",""); print $4}')"
    PAGES_COMPRESSED="$(echo "$VM_STAT_OUT" | awk '/Pages occupied by compressor/ {gsub("\\.",""); print $5}')"
    PAGES_COMPRESSED="${PAGES_COMPRESSED:-0}"
    USED_PAGES=$((PAGES_ACTIVE + PAGES_WIRED + PAGES_COMPRESSED))
    MEM_USED_BYTES=$((USED_PAGES * PAGE_SIZE))
    MEM_USED="$(bytes_to_gb "$MEM_USED_BYTES")"

    PAGES_FREE="$(echo "$VM_STAT_OUT" | awk '/Pages free/ {gsub("\\.",""); print $3}')"
    PAGES_FREE="${PAGES_FREE:-0}"
    MEM_FREE_BYTES=$((PAGES_FREE * PAGE_SIZE))
    MEM_FREE="$(bytes_to_gb "$MEM_FREE_BYTES")"
elif [ "$OS_TYPE" = "Linux" ]; then
    MEM_TOTAL_KB="$(free -k | awk '/^Mem:/ {print $2}')"
    MEM_USED_KB="$(free -k | awk '/^Mem:/ {print $3}')"
    MEM_FREE_KB="$(free -k | awk '/^Mem:/ {print $4}')"
    MEM_TOTAL="$(bytes_to_gb $((MEM_TOTAL_KB * 1024)))"
    MEM_USED="$(bytes_to_gb $((MEM_USED_KB * 1024)))"
    MEM_FREE="$(bytes_to_gb $((MEM_FREE_KB * 1024)))"
fi

## Storage (root filesystem)
# df -k gives 1024-byte blocks on both Linux and macOS.
DISK_LINE="$(df -k / | tail -n1)"
DISK_TOTAL_KB="$(echo "$DISK_LINE" | awk '{print $2}')"
DISK_USED_KB="$(echo "$DISK_LINE" | awk '{print $3}')"
DISK_FREE_KB="$(echo "$DISK_LINE" | awk '{print $4}')"
DISK_TOTAL="$(bytes_to_gb $((DISK_TOTAL_KB * 1024)))"
DISK_USED="$(bytes_to_gb $((DISK_USED_KB * 1024)))"
DISK_FREE="$(bytes_to_gb $((DISK_FREE_KB * 1024)))"

## Installed tools
SSH_STATUS="No"
SSH_KEYS=""
GIT_STATUS="No"
GIT_CONFIG_CONTENT=""
DOCKER_STATUS="No"
COMPOSE_STATUS="No"
PACKAGE_MANAGERS="$(detect_package_managers)"

if command_exists ssh; then
    SSH_VERSION="$(ssh -V 2>&1 | head -n1)"
    SSH_STATUS="Yes ($SSH_VERSION)"

    # List available key pairs in ~/.ssh by looking at the public keys
    # (*.pub) and, when possible, showing their type/fingerprint/comment.
    SSH_DIR="$HOME_DIR/.ssh"
    if [ -d "$SSH_DIR" ]; then
        for pubkey in "$SSH_DIR"/*.pub; do
            KEY_CONTENT="$(cat "$pubkey" 2>/dev/null)"
            SSH_KEYS="${SSH_KEYS}  - $(basename "$pubkey")"$'\n'
            SSH_KEYS="${SSH_KEYS}    ${KEY_CONTENT}"$'\n'
        done
    fi

    if [ -z "$SSH_KEYS" ]; then
        SSH_KEYS="  (no SSH keys found in $SSH_DIR)"$'\n'
    fi
fi

if command_exists git; then
    GIT_STATUS="Yes ($(git --version))"

    # Prefer git's own resolution of the global config path, falling back
    # to the conventional ~/.gitconfig location.
    GIT_CONFIG_FILE="$(git config --global --list --show-origin 2>/dev/null | head -n1 | sed -n 's/^file:\([^\t]*\).*/\1/p')"

    if [ -z "$GIT_CONFIG_FILE" ] || [ ! -r "$GIT_CONFIG_FILE" ]; then
        GIT_CONFIG_FILE="$HOME_DIR/.gitconfig"
    fi

    if [ -r "$GIT_CONFIG_FILE" ]; then
        GIT_CONFIG_CONTENT="$(sed 's/^/  /' "$GIT_CONFIG_FILE")"
    else
        GIT_CONFIG_CONTENT="  (no Git configuration file found)"
    fi
fi

if command_exists docker; then
    DOCKER_STATUS="Yes ($(docker --version 2>/dev/null))"

    if command_exists docker compose; then
        COMPOSE_STATUS="Yes ($(docker compose version 2>/dev/null))"
    fi
fi

## Output
echo "=============================================="
echo "               SYSTEM INFORMATION"
echo "=============================================="
printf "%-20s : %s\n" "Username"        "$USERNAME"
printf "%-20s : %s\n" "Home directory"  "$HOME_DIR"
printf "%-20s : %s\n" "Manufacturer"    "$HW_MANUFACTURER"
printf "%-20s : %s\n" "Model"           "$HW_MODEL"
printf "%-20s : %s\n" "Serial number"   "$HW_SERIAL"
printf "%-20s : %s\n" "OS type"         "$OS_TYPE"
printf "%-20s : %s\n" "OS version"      "$OS_VERSION"
printf "%-20s : %s\n" "CPU type"        "$CPU_TYPE"
printf "%-20s : %s\n" "CPU model"       "$CPU_MODEL"
printf "%-20s : %s\n" "Memory total"    "$MEM_TOTAL"
printf "%-20s : %s\n" "Memory used"     "$MEM_USED"
printf "%-20s : %s\n" "Memory free"     "$MEM_FREE"
printf "%-20s : %s\n" "Storage total"   "$DISK_TOTAL"
printf "%-20s : %s\n" "Storage used"    "$DISK_USED"
printf "%-20s : %s\n" "Storage free"    "$DISK_FREE"
printf "%-20s : %s\n" "Current shell"   "$CURRENT_SHELL"
echo "----------------------------------------------"
printf "%-20s : %s\n" "SSH installed"     "$SSH_STATUS"
printf "%-20s : %s\n" "Git installed"     "$GIT_STATUS"
printf "%-20s : %s\n" "Docker installed"  "$DOCKER_STATUS"
printf "%-20s : %s\n" "Docker Compose"    "$COMPOSE_STATUS"
printf "%-20s : %s\n" "Package managers"  "$PACKAGE_MANAGERS"
echo "----------------------------------------------"
if [ "$SSH_STATUS" != "No" ]; then
    printf "%-20s :\n" "SSH keys found"
    printf "%s" "$SSH_KEYS"
fi
if [ "$GIT_STATUS" != "No" ]; then
    printf "%-20s :\n" "Git config"
    printf "%s\n" "$GIT_CONFIG_CONTENT"
fi
echo "=============================================="
