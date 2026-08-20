# Repo-specific agent instructions

## Vibe coding + ADRs (mandatory)

Enforced by `.cursor/rules/adr.mdc`.

Every change that would make a reviewer ask "why?" ships with an ADR in `docs/decisions/`, committed alongside the code.

### Rules

1. Before commit, run `git diff`. If an ADR is required, create or update one.
2. Never commit feature or structural code without its ADR in the same commit or PR.
3. Commit body includes `ADR-0003: summary`.

### Skip ADR for

Typos, formatting-only edits, comment-only edits, refactors that change no behavior or design.

### For reviewers

Read the ADR in the PR first, then the diff.
