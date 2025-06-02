#!/bin/bash
set -e

# Change to the project directory
cd /Users/j/Projects/SafeConsent/parenting-is-all-they-need

echo "Rewriting history to fix author names..."

# Use filter-branch to replace "J." with "J Lynn" in commit messages
git filter-branch --force --msg-filter '
sed -e "s/Co-authored-by: J\. </Co-authored-by: J Lynn </g" \
    -e "s/Signed-off-by: J\. </Signed-off-by: J Lynn </g"
' --tag-name-filter cat -- --all

echo "Done! History has been rewritten."