#!/bin/bash
set -e

# Change to the project directory
cd /Users/j/Projects/SafeConsent/parenting-is-all-they-need

echo "Updating Claude's email to shortened format..."

# Use filter-branch to update Claude's email in all commits
git filter-branch --force --msg-filter '
sed -e "s/claude-opus-4-20250514\.code+is+coauthoring\.parenting-is-all-they-need@is-a\.thynker\.at\.thynker\.institute/claude-opus-4-20250514.code+coauth.piaten@is-a.thynker.at.thynker.institute/g"
' --tag-name-filter cat -- --all

echo "Done! Claude's email has been shortened."