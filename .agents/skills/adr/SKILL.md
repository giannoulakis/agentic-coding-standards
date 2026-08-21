---
name: adr
description: >-
  During feature or structural work, write or update a plain-language ADR
  in docs/decisions/ as decisions land, not only before commit. Commit it with
  the code. Use when adding features, architecture changes, library choices, or
  auth/security work.
---

# ADR

Follow this during feature and structural work, not only at commit time.

When a decision is made or the design shifts, create or update the ADR in the same interaction. Ship code and ADR in the same commit or PR. Follow AGENTS.md: pragmatic, KISS.

## When to write an ADR

Write or update one when:

- New feature or user-visible behavior
- Architecture, boundaries, or data model changes
- Library, framework, or infrastructure choices
- Auth, security, or persistence changes
- A reviewer would ask "why?"

Skip for typos, formatting-only edits, comment-only edits, and refactors that change no behavior or design.

## Workflow

1. At the start of feature or structural work, check whether an ADR is needed. If yes, create a draft or open the existing ADR for this change.
2. As you implement, update the ADR whenever the decision, scope, or trade-offs change. Do not wait for commit.
3. Before commit, run `git diff` and `git diff --stat`. Confirm the ADR matches the diff. Create or update if anything drifted.
4. Next number: `scripts/next-adr-number.sh`, or highest `docs/decisions/NNNN-*.md` + 1, zero-padded.
5. Draft using [ADR_TEMPLATE.md](../../../docs/decisions/ADR_TEMPLATE.md). Write each section to the length the decision needs. Delete empty sections.
6. Edit the draft for plain prose (see Writing below).
7. Set status to `accepted` when done; `proposed` only if recording intent before code lands.
8. Fill Confirmation with test commands and commit SHAs (or `pending` until commit).
9. Stage code and ADR together. One commit when possible.

## Sections (default)

- Context: lead with the trigger (user-visible symptom, report, or measurable pain), then the technical cause in this repo. For performance work, name the slow screen or action before the query or index.
- Decision: what you chose and why
- Alternatives considered: at least one rejected option, one line each
- Consequences: trade-offs in plain prose or bullets
- Confirmation: tests run and commit links

Add anti-goals only when scope creep is a real risk for this change.

## Length

Match the decision, not a word count. A one-line fix can stay brief. A perf fix, migration on a large table, or multi-option trade-off gets the room it needs. Do not pad. Do not cut the trigger or the why just to keep it short.

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

Self-check after meaningful changes and before commit:

- Does Context say why we did this now, not only what the code does?
- For perf or indexes: can a reader name the slow page or action without opening the diff?
- Does every sentence tell the reader something specific about this decision in this repo?

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

Report ADR path and id when the ADR is created or updated, and again when ready to commit.
