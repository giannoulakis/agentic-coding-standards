---
status: accepted
date: 2026-10-20
supersedes: null
---

# Trim AGENTS.md and defer simplicity rules to ponytail

## Context

`AGENTS.md` loads on every turn in every project. Reviewed against the `writing-for-agents` skill, it repeated one meaning four times (don't over engineer, KISS, no future abstractions, no early optimization), and the `ponytail` skill says it a fifth time. Several lines changed nothing versus the model's default ("be short, pragmatic, direct", "code should be intelligible"). Most rules were prohibitions. "Ask for clarification if needed" contradicted ponytail's "never stall on an answer you can default".

## Decision

Make `ponytail` the single source for "build the minimum" and keep one pointer line to it. Keep in `AGENTS.md` only what ponytail lacks: preserving comments, early returns, direct control flow, repetition over new abstractions, scope, and security call-outs. Phrase rules as the target behavior. Resolve the ask-or-ship conflict: default and state it, ask only when no safe default exists.

## Alternatives considered

- Keep the duplicated simplicity lines as insurance when ponytail does not trigger: rejected because duplication inflates those lines and costs tokens every turn; a weak trigger is fixed in the skill description.
- Remove simplicity from `AGENTS.md` entirely: rejected because copies of this file in projects without ponytail would lose the principle; the pointer line keeps it.

## Consequences

- Readers without the `ponytail` skill get only the one-line principle, not the ladder.
- Dropped lines (early optimization, upstream/downstream impact checks, brevity) now rely on ponytail or model defaults.

## Confirmation

- Commits: pending
