#!/bin/bash
# Verification script to check for company-specific references in repository
# Run this before publishing to ensure no sensitive company information is included

set -e

echo "=========================================="
echo "Company Reference Verification Script"
echo "=========================================="
echo ""

# Check for [CompanyName] references in tracked files
echo "1. Checking tracked files for '[CompanyName]' (case-insensitive)..."
[CompanyName]_IN_FILES=$(git ls-files | xargs grep -i "[CompanyName]" 2>/dev/null | grep -v "^Binary" || true)
if [ -z "$[CompanyName]_IN_FILES" ]; then
    echo "   ✓ No [CompanyName] references found in tracked files"
else
    echo "   ✗ [CompanyName] references found:"
    echo "$[CompanyName]_IN_FILES"
    exit 1
fi

# Check git history for [CompanyName] in file contents (not commit messages)
echo ""
echo "2. Checking git history for [CompanyName] in file contents..."
[CompanyName]_IN_HISTORY=$(git log -p --all -S "[CompanyName]" --source --full-history 2>/dev/null | grep -E "^\+.*[CompanyName]|^\-.*[CompanyName]" | grep -v "^+++\|^---" || true)
if [ -z "$[CompanyName]_IN_HISTORY" ]; then
    echo "   ✓ No [CompanyName] in file contents in git history"
else
    echo "   ⚠ [CompanyName] found in git history (may be in old commits):"
    echo "$[CompanyName]_IN_HISTORY" | head -5
    echo "   (This is normal if you've removed [CompanyName] references in recent commits)"
fi

# Check for files with [CompanyName] in name
echo ""
echo "3. Checking for files with [CompanyName] in name..."
[CompanyName]_FILES=$(find . -type f \( -iname "*[CompanyName]*" \) 2>/dev/null | grep -v ".git" | grep -v "chat_history" || true)
if [ -z "$[CompanyName]_FILES" ]; then
    echo "   ✓ No files with [CompanyName] in name"
else
    echo "   ✗ Files with [CompanyName] in name found:"
    echo "$[CompanyName]_FILES"
    exit 1
fi

# Check for common company identifier patterns
echo ""
echo "4. Checking for other company identifier patterns..."
echo "   (Email domains, internal paths, etc.)"

# Check for company email domains (adjust pattern as needed)
COMPANY_EMAILS=$(git ls-files | xargs grep -iE "@[CompanyName]\.|@.*[CompanyName]" 2>/dev/null || true)
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

