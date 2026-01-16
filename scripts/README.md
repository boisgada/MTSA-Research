# Scripts Folder

## Purpose

This folder contains utility scripts for maintaining and managing the AI Assistance Template and projects derived from it.

---

## Available Scripts

### update-submodules.sh

**Purpose**: Helper script for keeping git submodules up-to-date

**Usage**:
```bash
./scripts/update-submodules.sh
```

**Features**:
- Check submodule status
- View recent changes in submodules
- Update all submodules to latest
- Update specific submodule

**Options** (interactive menu):
1. Check status only (no updates)
2. Show what's new in submodules (fetch but don't update)
3. Update all submodules to latest
4. Update specific submodule

**Example**:
```bash
# Run the script
./scripts/update-submodules.sh

# Follow the interactive prompts
```

**Note**: After updating submodules, remember to:
1. Review changes with `git status`
2. Test your project for compatibility
3. Commit the updates with a descriptive message

---

## Adding New Scripts

When adding new utility scripts:

1. Place them in this `scripts/` folder
2. Make them executable: `chmod +x scripts/script-name.sh`
3. Document them in this README
4. Include usage instructions
5. Follow bash best practices (error handling, etc.)

---

*Scripts folder - January 2025*
