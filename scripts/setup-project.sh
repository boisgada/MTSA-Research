#!/bin/bash

# Project Setup Script for AI Assistance Template
# This script helps configure a new project from the template

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== AI Assistance Template Project Setup ===${NC}\n"

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo -e "${YELLOW}Note: This directory is not yet a git repository${NC}"
    echo "You may want to initialize it with: git init"
    echo ""
fi

# Chat History Syncing Configuration
echo -e "${BLUE}Chat History Syncing Configuration${NC}"
echo ""
echo "Chat history files (e.g., *.md files containing AI chat conversations)"
echo "can be included in your git repository to maintain context and documentation."
echo ""
echo "Benefits of syncing chat history:"
echo "  - Maintains full context across sessions"
echo "  - Documents decision-making process"
echo "  - Provides historical reference"
echo "  - Helps AI assistants understand project evolution"
echo ""
echo "Considerations:"
echo "  - Chat history may contain personal notes or sensitive information"
echo "  - Files can become large over time"
echo "  - Review content before committing if repository is shared"
echo ""

read -p "Should chat history files be synced to this repository? [Y/n]: " sync_chat_history

# Normalize input (default to yes)
sync_chat_history=$(echo "$sync_chat_history" | tr '[:upper:]' '[:lower:]')
if [ -z "$sync_chat_history" ] || [ "$sync_chat_history" = "y" ] || [ "$sync_chat_history" = "yes" ]; then
    sync_chat_history="yes"
    echo -e "${GREEN}Chat history files will be synced to the repository${NC}"

    # Check .gitignore and update if needed
    if [ -f .gitignore ]; then
        # Remove any chat history ignore patterns
        if grep -q "chat.*history\|chat_history\|\.chat\.md\|-chat\.md" .gitignore 2>/dev/null; then
            echo -e "${YELLOW}Updating .gitignore to allow chat history files...${NC}"
            # Create backup
            cp .gitignore .gitignore.backup
            # Remove chat history ignore patterns
            grep -v -i "chat.*history\|chat_history\|\.chat\.md\|-chat\.md" .gitignore > .gitignore.tmp || true
            mv .gitignore.tmp .gitignore
        fi
    fi

    # Create chat history directory if it doesn't exist
    if [ ! -d "ai-collaboration/chat-history" ]; then
        mkdir -p ai-collaboration/chat-history
        echo -e "${GREEN}Created ai-collaboration/chat-history/ directory${NC}"
    fi

else
    sync_chat_history="no"
    echo -e "${YELLOW}Chat history files will NOT be synced to the repository${NC}"

    # Add chat history to .gitignore
    if [ -f .gitignore ]; then
        if ! grep -q "chat.*history\|chat_history" .gitignore 2>/dev/null; then
            echo "" >> .gitignore
            echo "# Chat history files (excluded from repository)" >> .gitignore
            echo "ai-collaboration/chat-history/" >> .gitignore
            echo "*chat*.md" >> .gitignore
            echo "*_chat_*.md" >> .gitignore
            echo "-chat*.md" >> .gitignore
            echo ".chat*.md" >> .gitignore
            echo -e "${GREEN}Added chat history patterns to .gitignore${NC}"
        fi
    else
        # Create .gitignore if it doesn't exist
        cat > .gitignore << 'EOF'
# Chat history files (excluded from repository)
ai-collaboration/chat-history/
*chat*.md
*_chat_*.md
-chat*.md
.chat*.md
EOF
        echo -e "${GREEN}Created .gitignore with chat history exclusions${NC}"
    fi
fi

# Create chat history README
if [ "$sync_chat_history" = "yes" ]; then
    cat > ai-collaboration/chat-history/README.md << 'EOF'
# Chat History

## Purpose

This folder contains AI chat history files that document conversations and interactions with AI assistants during project development.

## Benefits

- **Context Preservation**: Maintains full conversation context across sessions
- **Decision Documentation**: Records decision-making process and rationale
- **Historical Reference**: Provides complete project evolution history
- **AI Understanding**: Helps AI assistants understand project context and decisions

## File Organization

Chat history files should follow a naming convention:
- `chat-history-YYYY-MM-DD.md` - Date-based naming
- `chat-history-YYYYMMDD-HHMMSS.md` - Date and time-based naming
- `session-YYYY-MM-DD.md` - Session-based naming

## Best Practices

1. **Regular Commits**: Commit chat history files regularly to maintain history
2. **Descriptive Names**: Use clear, descriptive filenames
3. **Review Before Commit**: Review content if repository is shared
4. **Organization**: Consider organizing by date or topic if files become numerous

## Privacy Considerations

If your repository is shared:
- Review chat history for sensitive information before committing
- Remove any personal or sensitive data
- Consider project-specific guidelines for chat history content

---

*Chat History folder - Created during project setup*
EOF
    echo -e "${GREEN}Created ai-collaboration/chat-history/README.md${NC}"
fi

echo ""
echo -e "${GREEN}=== Setup Complete ===${NC}"
echo ""
echo "Next steps:"
echo "1. Customize ai-collaboration/project-context.md with your project information"
echo "2. Review and customize ai-collaboration/rules-of-engagement.md"
if [ "$sync_chat_history" = "yes" ]; then
    echo "3. Chat history files will be tracked in git (see ai-collaboration/chat-history/README.md)"
else
    echo "3. Chat history files are excluded from git (see .gitignore)"
fi
echo "4. Review QUICK_START.md for additional setup instructions"
echo ""
