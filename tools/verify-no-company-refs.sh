#!/bin/bash
# Verification script to check for company-specific references in repository
# Run this before publishing to ensure no sensitive company information is included
#
# Usage: ./verify-no-company-refs.sh [CompanyName]
#        If CompanyName is not provided, script will prompt or use default patterns

set -e

# Get company name from argument or use placeholder
COMPANY_NAME="${1:-[CompanyName]}"
COMPANY_NAME_UPPER=$(echo "$COMPANY_NAME" | tr '[:lower:]' '[:upper:]')
COMPANY_NAME_LOWER=$(echo "$COMPANY_NAME" | tr '[:upper:]' '[:lower:]')

echo "=========================================="
echo "Company Reference Verification Script"
echo "=========================================="
echo "Checking for: $COMPANY_NAME"
echo ""

# Check for company name references in tracked files
echo "1. Checking tracked files for '$COMPANY_NAME' (case-insensitive)..."
COMPANY_IN_FILES=$(git ls-files | xargs grep -i "$COMPANY_NAME_LOWER" 2>/dev/null | grep -v "^Binary" || true)
if [ -z "$COMPANY_IN_FILES" ]; then
    echo "   ✓ No $COMPANY_NAME references found in tracked files"
else
    echo "   ✗ $COMPANY_NAME references found:"
    echo "$COMPANY_IN_FILES"
    exit 1
fi

# Check git history for company name in file contents (not commit messages)
echo ""
echo "2. Checking git history for $COMPANY_NAME in file contents..."
COMPANY_IN_HISTORY=$(git log -p --all -S "$COMPANY_NAME_UPPER" --source --full-history 2>/dev/null | grep -E "^\+.*$COMPANY_NAME_UPPER|^\-.*$COMPANY_NAME_UPPER" | grep -v "^+++\|^---" || true)
if [ -z "$COMPANY_IN_HISTORY" ]; then
    echo "   ✓ No $COMPANY_NAME in file contents in git history"
else
    echo "   ⚠ $COMPANY_NAME found in git history (may be in old commits):"
    echo "$COMPANY_IN_HISTORY" | head -5
    echo "   (This is normal if you've removed company references in recent commits)"
fi

# Check for files with company name in name
echo ""
echo "3. Checking for files with $COMPANY_NAME in name..."
COMPANY_FILES=$(find . -type f \( -iname "*${COMPANY_NAME_LOWER}*" \) 2>/dev/null | grep -v ".git" | grep -v "chat_history" || true)
if [ -z "$COMPANY_FILES" ]; then
    echo "   ✓ No files with $COMPANY_NAME in name"
else
    echo "   ✗ Files with $COMPANY_NAME in name found:"
    echo "$COMPANY_FILES"
    exit 1
fi

# Check for common company identifier patterns
echo ""
echo "4. Checking for other company identifier patterns..."
echo "   (Email domains, internal paths, etc.)"

# Check for company email domains (adjust pattern as needed)
# Replace [CompanyName] with actual company name when using
COMPANY_EMAILS=$(git ls-files | xargs grep -iE "@${COMPANY_NAME_LOWER}\.|@.*${COMPANY_NAME_LOWER}" 2>/dev/null || true)
if [ -z "$COMPANY_EMAILS" ]; then
    echo "   ✓ No company email domains found"
else
    echo "   ✗ Company email domains found:"
    echo "$COMPANY_EMAILS"
    exit 1
fi

# Check for OneDrive paths (common in file paths)
ONEDRIVE_PATHS=$(git ls-files | xargs grep -i "onedrive" 2>/dev/null || true)
if [ -z "$ONEDRIVE_PATHS" ]; then
    echo "   ✓ No OneDrive paths found"
else
    echo "   ⚠ OneDrive paths found (may be in comments or metadata):"
    echo "$ONEDRIVE_PATHS"
fi

# Summary
echo ""
echo "=========================================="
echo "Verification Complete"
echo "=========================================="
echo ""
echo "✓ Repository appears clean of company-specific references"
echo ""
echo "Note: This script checks tracked files only."
echo "      Files in .gitignore are excluded by design."
echo ""
echo "Usage: Run with company name as argument:"
echo "       ./verify-no-company-refs.sh [YourCompanyName]"
echo ""

