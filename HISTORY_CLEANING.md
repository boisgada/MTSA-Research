# Cleaning Git History of Company References

## Purpose

This document explains how to remove company-specific references from the entire git history of this repository.

## Current Situation

The repository HEAD (current state) should be clean - no company-specific references should exist in tracked files.

However, **company references may exist in git history** from earlier commits before cleanup.

## Options

### Option 1: Leave History As-Is (Recommended if repository is already public)
**Pros:**
- No risk of breaking anything
- Current state is clean
- Historical commits show the evolution

**Cons:**
- Company name appears in git history
- Anyone cloning the repo can see old commits with company references

### Option 2: Rewrite Entire History (Use if you want completely clean history)
**Pros:**
- Completely clean history
- No company references anywhere in git log
- Better for public sharing

**Cons:**
- **Requires force push** (overwrites remote history)
- All commit hashes will change
- If others have cloned the repo, their copies will be out of sync
- Cannot be easily undone

## How to Clean History (Option 2)

### Prerequisites
- `git-filter-repo` must be installed (check with `which git-filter-repo`)
- Repository must be on `main` branch
- No uncommitted changes
- **Backup your repository first!**

### Steps

1. **Review what will be changed:**
   ```bash
   # Replace [CompanyName] with actual company name
   git log --all -p -S "[CompanyName]" --source --full-history
   ```

2. **Run the cleaning script:**
   ```bash
   ./clean-git-history.sh [CompanyName]
   ```
   
   Or run without argument to be prompted:
   ```bash
   ./clean-git-history.sh
   ```
   
   The script will:
   - Create a backup branch
   - Replace company name with "[CompanyName]" in all file contents throughout history
   - Rewrite all commits

3. **Verify the changes:**
   ```bash
   git log --all -S "[CompanyName]"
   # Should show replaced references
   
   git log --all -S "[CompanyName]" | grep -v "[CompanyName]" || echo "✓ Clean"
   ```

4. **Force push to remote:**
   ```bash
   git push origin main --force
   ```
   
   **WARNING**: This overwrites the remote history. Anyone who has cloned the repo will need to re-clone or reset their local copy.

### Manual Alternative

If you prefer to do it manually:

```bash
# Replace [CompanyName] with actual company name in these commands

# Create backup
git branch backup-before-clean

# Create replacement file
cat > /tmp/replacements.txt << EOF
[CompanyNameUpper]==>[CompanyName]
[CompanyNameLower]==>[CompanyName]
[CompanyNameTitle]==>[CompanyName]
EOF

# Run git-filter-repo
git filter-repo --replace-text /tmp/replacements.txt --force

# Clean up
rm /tmp/replacements.txt
```

## Important Notes

1. **Force Push Required**: After rewriting history, you must force push:
   ```bash
   git push origin main --force
   ```

2. **Collaborators**: If others have cloned the repo, they'll need to:
   - Delete their local clone
   - Re-clone from remote, OR
   - Reset their local branch: `git fetch origin && git reset --hard origin/main`

3. **Backup**: The script creates a backup branch, but you may also want to:
   - Create a full repository backup: `git clone --mirror . ../MTSA-backup.git`
   - Or push backup branch to remote: `git push origin backup-branch-name`

4. **GitHub**: If the repo is on GitHub, the force push will update it immediately. There's no way to undo this on GitHub once pushed.

## Verification

After cleaning, verify with:

```bash
# Check current files (should be clean)
git ls-files | xargs grep -i "[CompanyName]" || echo "✓ Clean"

# Check history (should show [CompanyName] instead of actual company name)
git log --all -S "[CompanyName]"

# Verify company name is gone from history
# (Replace [CompanyName] with actual company name to check)
git log --all -S "[CompanyName]" || echo "✓ No company references in history"
```

## Recommendation

**If the repository is already public and has been shared:**
- Consider leaving history as-is (Option 1)
- The current HEAD is clean, which is what matters most
- Historical commits showing the cleanup process can actually be informative

**If the repository is new/private and you want completely clean history:**
- Use Option 2 (rewrite history)
- Run `./clean-git-history.sh [CompanyName]`
- Force push after verification

---

*Document created: January 2025*
