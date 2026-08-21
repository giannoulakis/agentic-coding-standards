---
status: accepted
date: 2026-08-21
tags: [skills, portability]
---

# Move agent skills to `.agents/skills/`

## Context

Skills lived under `.cursor/skills/`, which only Cursor reads by convention. Codex, Gemini CLI, and other harnesses that follow the Agent Skills open standard look in `.agents/skills/` instead. We want one copy of each skill that works across harnesses without duplicating content.

## Decision

Move `adr`, `unslop`, and `ai-pr` to `.agents/skills/`. Update `.cursor/rules/` and `README.md` to point at the new paths. Strip harness-specific lines from skill bodies (auto-invoke notes tied to Cursor rules). Keep `.cursor/rules/` as the always-on trigger layer for this repo.

## Alternatives considered

- Duplicate skills in both `.cursor/skills/` and `.agents/skills/`: rejected because two copies drift
- Symlink `.cursor/skills/` to `.agents/skills/`: rejected for now; Cursor already reads `.agents/skills/` natively

## Consequences

- Codex and Gemini CLI pick up skills without extra setup
- Install instructions in README now say `~/.agents/skills/` instead of `~/.cursor/skills/`
- Cursor rules still required for always-on adr/unslop enforcement in this repo

## Confirmation

- Commits: pending
- Checks: skill paths updated in rules and README; old `.cursor/skills/` removed
