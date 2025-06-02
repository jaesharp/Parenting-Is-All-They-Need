#!/bin/bash
set -e

# Change to the project directory
cd /Users/j/Projects/SafeConsent/parenting-is-all-they-need

echo "Updating Claude's name format..."

# Use filter-branch to update Claude's name in all commits
git filter-branch --force --msg-filter '
sed -e "s/Co-authored-by: Claude </Co-authored-by: Claude Opus v4 20250514.Code </g"
' --tag-name-filter cat -- --all

echo "Done! Claude's name has been updated."