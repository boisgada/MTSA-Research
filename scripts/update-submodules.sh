#!/bin/bash

# Submodule Update Helper Script
# This script helps keep git submodules up-to-date in the AI Assistance Template

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Submodule Maintenance Script ===${NC}\n"

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo -e "${RED}Error: Not in a git repository${NC}"
    exit 1
fi

# Check if there are any submodules
if [ ! -f .gitmodules ]; then
    echo -e "${YELLOW}No submodules found in this repository${NC}"
    exit 0
fi

echo -e "${BLUE}Current submodule status:${NC}"
git submodule status
echo ""

# Ask user what they want to do
echo "What would you like to do?"
echo "1) Check status only (no updates)"
echo "2) Show what's new in submodules (fetch but don't update)"
echo "3) Update all submodules to latest"
echo "4) Update specific submodule"
echo ""
read -p "Enter choice [1-4]: " choice

case $choice in
    1)
        echo -e "\n${GREEN}Submodule status check complete${NC}"
        ;;
    2)
        echo -e "\n${BLUE}Fetching latest changes from submodules...${NC}"
        git submodule foreach git fetch origin
        echo -e "\n${BLUE}Recent changes in submodules:${NC}\n"
        git submodule foreach 'echo "=== $name ===" && git log HEAD..origin/main --oneline --max-count=5 2>/dev/null || git log HEAD..origin/master --oneline --max-count=5 2>/dev/null || echo "No new changes or unable to determine default branch"'
        ;;
    3)
        echo -e "\n${BLUE}Updating all submodules to latest version...${NC}"
        git submodule update --remote
        echo -e "\n${GREEN}Submodules updated!${NC}"
        echo -e "\n${YELLOW}Next steps:${NC}"
        echo "1. Review changes: git status"
        echo "2. Test your project for compatibility"
        echo "3. Commit updates: git add .gitmodules <submodule-path> && git commit -m 'Update submodules'"
        ;;
    4)
        echo -e "\n${BLUE}Available submodules:${NC}"
        git config --file .gitmodules --get-regexp path | awk '{print $2}'
        echo ""
        read -p "Enter submodule path to update: " submodule_path
        if [ -z "$submodule_path" ]; then
            echo -e "${RED}Error: No submodule path provided${NC}"
            exit 1
        fi
        if [ ! -d "$submodule_path" ]; then
            echo -e "${RED}Error: Submodule path '$submodule_path' does not exist${NC}"
            exit 1
        fi
        echo -e "\n${BLUE}Updating $submodule_path...${NC}"
        git submodule update --remote "$submodule_path"
        echo -e "\n${GREEN}Submodule updated!${NC}"
        echo -e "\n${YELLOW}Next steps:${NC}"
        echo "1. Review changes: git status"
        echo "2. Test your project for compatibility"
        echo "3. Commit update: git add .gitmodules $submodule_path && git commit -m 'Update $submodule_path submodule'"
        ;;
    *)
        echo -e "${RED}Invalid choice${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${GREEN}Done!${NC}"
