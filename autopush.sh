#!/bin/bash
# ============================================================
#  autopush.sh — Astro Auto Push Script
#  Usage:
#    ./autopush.sh                  # Auto-generate commit message
#    ./autopush.sh "your message"   # Custom commit message
# ============================================================

set -e

# ── Colors ────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
RESET='\033[0m'

log()   { echo -e "${CYAN}[autopush]${RESET} $1"; }
ok()    { echo -e "${GREEN}[✓]${RESET} $1"; }
warn()  { echo -e "${YELLOW}[!]${RESET} $1"; }
error() { echo -e "${RED}[✗]${RESET} $1"; exit 1; }

# ── Config ────────────────────────────────────────────────
BRANCH="main"
REMOTE="origin"
# ─────────────────────────────────────────────────────────

# ── Check if inside a Git repo ───────────────────────────
if ! git rev-parse --git-dir > /dev/null 2>&1; then
  error "Not a Git repository. Please run this script inside your project folder."
fi

# ── Generate commit message ───────────────────────────────
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ -n "$1" ]; then
  COMMIT_MSG="$1"
else
  COMMIT_MSG="chore: auto update [$TIMESTAMP]"
fi

# ── Check for changes ─────────────────────────────────────
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  warn "No changes detected. Nothing to push."
  exit 0
fi

log "Starting auto push..."
echo ""

# ── Step 1: git add ───────────────────────────────────────
log "Step 1/3 — Staging all changes (git add -A)"
git add -A
ok "All changes staged."

# ── Step 2: git commit ────────────────────────────────────
log "Step 2/3 — Creating commit"
echo -e "  Message: ${YELLOW}${COMMIT_MSG}${RESET}"
git commit -m "$COMMIT_MSG"
ok "Commit created."

# ── Step 3: git push ──────────────────────────────────────
log "Step 3/3 — Pushing to ${REMOTE}/${BRANCH}"
git push "$REMOTE" "$BRANCH"
ok "Push successful!"

echo ""
echo -e "${GREEN}══════════════════════════════════════${RESET}"
echo -e "${GREEN}  ✈  Pushed! Cloudflare Pages is now deploying...${RESET}"
echo -e "${GREEN}══════════════════════════════════════${RESET}"
echo ""
echo -e "  Branch  : ${YELLOW}${BRANCH}${RESET}"
echo -e "  Time    : ${YELLOW}${TIMESTAMP}${RESET}"
echo -e "  Commit  : ${YELLOW}${COMMIT_MSG}${RESET}"
echo ""
echo -e "  Check your deployment at:"
echo -e "  ${CYAN}https://dash.cloudflare.com${RESET}"
echo ""
