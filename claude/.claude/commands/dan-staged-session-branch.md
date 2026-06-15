---
description: Create a git branch with semantic naming based on staged changes analysis
model: haiku
effort: low
---

# Create Branch Command

## Instructions
1. **Verify Git:** Check `git rev-parse --is-inside-work-tree`. If not in a repo, stop.
2. **Analyze Stage:** Run `git diff --staged --stat`. If empty, ask the user to stage files first.
3. **Suggest Type:** Based on file names (e.g., `.test` -> `test`, `index.js` -> `feature`), suggest a branch type: feature, bugfix, refactor, chore, docs, test, or hotfix.
4. **Name Suggestions:** Generate 3 kebab-case name suggestions based on the actual code changes.
5. **Execution:** After the user selects/confirms, run `git checkout -b <type>/<name>`.

$ARGUMENTS
