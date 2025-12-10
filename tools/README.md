# Repository Maintenance Tools

## Purpose

This folder contains **utility scripts and documentation** for maintaining the repository, ensuring it remains clean of company-specific references, and managing git history.

---

## Contents

### Verification Scripts

- **`verify-no-company-refs.sh`**: Verifies that tracked files contain no company-specific references
  - Usage: `./verify-no-company-refs.sh [CompanyName]`
  - Checks tracked files, git history, filenames, email domains, and paths
  - Run before publishing to ensure repository is clean

### History Cleaning Tools

- **`clean-git-history.sh`**: Removes company-specific references from entire git history
  - Usage: `./clean-git-history.sh [CompanyName]`
  - Rewrites git history using `git-filter-repo`
  - Creates backup branch before making changes
  - **WARNING**: Requires force push after running

- **`HISTORY_CLEANING.md`**: Documentation for cleaning git history
  - Explains options for handling company references in history
  - Step-by-step instructions for history cleaning
  - Important warnings and considerations

---

## Quick Reference

### Verify Repository is Clean
```bash
./tools/verify-no-company-refs.sh [CompanyName]
```

### Clean Git History (if needed)
```bash
./tools/clean-git-history.sh [CompanyName]
# Then force push: git push origin main --force
```

---

## Related Documentation

- **PUBLISHING.md**: Pre-publish checklist and guidelines
- **.gitignore**: Files excluded from repository

---

*Tools for maintaining repository cleanliness and compliance*

