#!/bin/bash
set -e

# Change to the project directory
cd /Users/j/Projects/SafeConsent/parenting-is-all-they-need

echo "Fixing typo in email addresses (piath -> piaten)..."

# Use filter-branch to fix the typo
git filter-branch --force --msg-filter '
sed -e "s/j+coauth\.piath+safeconsent/j+coauth.piaten+safeconsent/g"
' --tag-name-filter cat -- --all

echo "Done! Typo has been fixed."