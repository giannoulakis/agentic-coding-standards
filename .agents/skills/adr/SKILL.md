---
name: adr
description: >-
  Before commit on feature or structural work, write a short plain-language ADR
  in docs/decisions/ and commit it with the code. Applies automatically in
  this repo.
---

# ADR

Auto-invoked via `.cursor/rules/adr.mdc`. No `/adr` needed. Follow this before every commit that adds or changes behavior.

Ship code and ADR in the same commit or PR. Follow AGENTS.md: short, pragmatic, KISS.

## When to write an ADR

Write one when:

- New feature or user-visible behavior
- Architecture, boundaries, or data model changes
- Library, framework, or infrastructure choices
- Auth, security, or persistence changes
- A reviewer would ask "why?"

Skip for typos, formatting-only edits, comment-only edits, and refactors that change no behavior or design.

## Workflow

1. Implement (or finish the vibe-coding pass).
2. Before commit, run `git diff` and `git diff --stat`. If an ADR is required, create or update one.
3. Next number: `scripts/next-adr-number.sh`, or highest `docs/decisions/NNNN-*.md` + 1, zero-padded.
4. Draft using [ADR_TEMPLATE.md](../../../docs/decisions/ADR_TEMPLATE.md). A few sentences or bullets per section. Delete empty sections.
5. Edit the draft for plain prose (see Writing below).
6. Set status to `accepted` when done; `proposed` only if recording intent before code lands.
7. Fill Confirmation with test commands and commit SHAs (or `pending` until commit).
8. Stage code and ADR together. One commit when possible.

## Sections (default)

- Context: one short paragraph on the problem and constraints in this codebase
- Decision: what you chose and why
- Alternatives considered: at least one rejected option, one line each
- Consequences: trade-offs in plain prose or short bullets
- Confirmation: tests run and commit links

Add anti-goals only when scope creep is a real risk for this change.

## Writing

Write like a teammate explaining a choice, not like generated docs.

- Active voice. Name the actor: "we store sessions in Redis", not "sessions are stored."
- Plain words. Use "use" not "leverage", "help" not "facilitate", "many" not "numerous."
- Concrete facts about this repo. Name files, commands, limits. If a sentence could appear unchanged in another project's docs, cut it.
- No em dashes. Use periods or commas.
- No label-and-colon bullets (`**Good:**`, `**Bad:**`, `**Required:**`). Use prose or plain bullets.
- No filler or hedging: cut "it is important to note", "additionally", "crucial", "landscape", "testament to."
- No puffery or promotional tone.
- Sentence case headings.
- One idea per sentence. Split dense lines.

Self-check before commit: does every sentence tell the reader something specific about this decision in this repo?

## Commit message

```
feat(scope): short summary

ADR-0004: one-line decision summary
```

## Before handoff

- ADR number is sequential
- ADR matches the diff (no aspirational text)
- Prose is plain and specific to this change
- Code and ADR staged together
- Commit message references ADR id

Report ADR path and id when ready to commit.
