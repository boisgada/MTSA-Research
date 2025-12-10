#!/bin/bash
# Script to remove company-specific references from entire git history
# WARNING: This rewrites git history and requires force push
# 
# Usage: ./clean-git-history.sh [CompanyName]
#        If CompanyName is not provided, script will prompt for it
# 
# This script will:
# 1. Replace company name (case-insensitive) with "[CompanyName]" in all file contents
# 2. Create a backup branch before making changes
# 3. Rewrite history using git-filter-repo
# 4. Provide instructions for force pushing

set -e

# Get company name from argument or prompt
if [ -z "$1" ]; then
    echo "Enter the company name to remove from history:"
    read -r COMPANY_NAME
else
    COMPANY_NAME="$1"
fi

if [ -z "$COMPANY_NAME" ]; then
    echo "Error: Company name is required"
    exit 1
fi

COMPANY_NAME_UPPER=$(echo "$COMPANY_NAME" | tr '[:lower:]' '[:upper:]')
COMPANY_NAME_LOWER=$(echo "$COMPANY_NAME" | tr '[:upper:]' '[:lower:]')
COMPANY_NAME_TITLE=$(echo "$COMPANY_NAME" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')

echo "=========================================="
echo "Git History Cleaning Script"
echo "=========================================="
echo ""
echo "WARNING: This will rewrite git history!"
echo "This operation cannot be easily undone."
echo ""
echo "This script will:"
echo "  - Replace '$COMPANY_NAME' with '[CompanyName]' in all file contents throughout history"
echo "  - Create a backup branch before making changes"
echo "  - Rewrite all commit hashes (history will change)"
echo "  - Require force push to update remote repository"
echo ""
read -p "Do you want to continue? (yes/no): " CONFIRM
if [ "$CONFIRM" != "yes" ]; then
    echo "Aborted."
    exit 0
fi
echo ""

# Check if we're on main branch
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "Error: Must be on 'main' branch"
    exit 1
fi

# Check if there are uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "Error: You have uncommitted changes. Please commit or stash them first."
    exit 1
fi

# Create backup branch
BACKUP_BRANCH="backup-before-history-clean-$(date +%Y%m%d-%H%M%S)"
echo "Creating backup branch: $BACKUP_BRANCH"
git branch "$BACKUP_BRANCH"

echo ""
echo "Backup created. Proceeding with history rewrite..."
echo ""

# Create replacement file for git-filter-repo
REPLACEMENT_FILE=$(mktemp)
cat > "$REPLACEMENT_FILE" << EOF
***REMOVED***
${COMPANY_NAME_UPPER}==>[CompanyName]
${COMPANY_NAME_LOWER}==>[CompanyName]
${COMPANY_NAME_TITLE}==>[CompanyName]
EOF

echo "Replacement rules:"
cat "$REPLACEMENT_FILE"
echo ""

# Run git-filter-repo
echo "Running git-filter-repo to clean history..."
git filter-repo \
    --replace-text "$REPLACEMENT_FILE" \
    --force

# Clean up
rm "$REPLACEMENT_FILE"

echo ""
echo "=========================================="
echo "History Cleaning Complete"
echo "=========================================="
echo ""
echo "✓ Git history has been rewritten"
echo "✓ All company references replaced with [CompanyName]"
echo ""
echo "Next steps:"
echo "1. Review the changes: git log --all"
echo "2. Verify no company references remain: git log --all -S '[CompanyName]'"
echo "3. Force push to remote (WARNING: This overwrites remote history):"
echo "   git push origin main --force"
echo ""
echo "Backup branch created: $BACKUP_BRANCH"
echo "To restore original history: git reset --hard $BACKUP_BRANCH"
echo ""
