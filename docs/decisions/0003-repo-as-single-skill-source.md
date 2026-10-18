---
status: accepted
date: 2026-10-16
supersedes: null
---

# Make this repo the single source for installed skills

## Context

Guilherme's global `~/.agents/skills/` and his notes vault each held hand-copied skills. They drifted: the vault `adr` was an older version, and the global `adr` carried its own template because the repo skill linked to `../../../docs/decisions/ADR_TEMPLATE.md`, which breaks once the skill is copied out of this repo. `ponytail` was also one upstream release behind.

## Decision

Keep `ADR_TEMPLATE.md` inside `.agents/skills/adr/` so the skill is self-contained wherever it is installed. Install by symlinking each `.agents/skills/<name>` from this checkout, so updates here reach every install. Sync `ponytail` from DietrichGebert/ponytail (now v5.3.0).

## Alternatives considered

- Keep copying skills: rejected because copies drift.
- Keep the template in `docs/decisions/` and copy it into installs: rejected for the same reason.

## Consequences

- The ADR template now lives at `.agents/skills/adr/ADR_TEMPLATE.md`; `llms.txt` points there.
- Installs depend on this checkout staying at `~/Projects/agentic-coding-standards`.

## Confirmation

- Commits: pending
