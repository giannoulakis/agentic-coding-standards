# Repo-specific agent instructions

## Vibe coding + ADRs (mandatory)

Enforced by `.cursor/rules/adr.mdc`.

Every change that would make a reviewer ask "why?" ships with an ADR in `docs/decisions/`, committed alongside the code.

### Rules

1. During feature or structural work, create or update the ADR as decisions land. Do not wait for commit.
2. Before commit, run `git diff`. Confirm the ADR matches the diff.
3. Never commit feature or structural code without its ADR in the same commit or PR.
4. Commit body includes `ADR-0003: summary`.

### Skip ADR for

Typos, formatting-only edits, comment-only edits, refactors that change no behavior or design.

### For reviewers

Read the ADR in the PR first, then the diff.
