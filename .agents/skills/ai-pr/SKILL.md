---
name: ai-pr
description: Generate copy-pasteable git/gh commands for branch, commit, push, and PR creation from staged changes. Use when the user asks for ai_pr, PR commands from staged changes, or a one-shot branch/commit/push/PR workflow. Never execute commands — output only.
---

# AI PR

Generate a single chained shell command from **staged changes only**.

## Critical rules

- Run `git diff --cached` to inspect staged changes. Base everything only on that diff.
- Do **not** modify, stage, or commit any files.
- Do **not** execute the generated git/gh commands.
- Output **only** executable shell commands — no markdown fences, no commentary, no extra sections.

## Workflow

1. Run `git diff --cached`. If nothing is staged, say so and stop.
2. Derive from the diff:
   - Branch name — short lowercase kebab-case with prefix: `feat/`, `fix/`, `refactor/`, `chore/`, `test/`, or `docs/`
   - Commit message — one concise line
   - PR title — concise, matches the change
   - PR description — what changed and why (short, useful)
3. Output this structure exactly, chained with `&&`:

```text
git switch -c '<branch>' && \
git commit -m '<commit message>' && \
git push -u origin '<branch>' && \
gh pr create --title '<PR title>' --body "$(cat <<'PR_BODY'
<PR description>
PR_BODY
)"
```

The user copies and runs the block in one go.

## Output constraints

- One copy-pasteable command block only.
- Escape quotes in commit message, title, and body so the shell command is valid.
- Warn if staged files look like secrets (`.env`, credentials) — do not include them in suggestions.
