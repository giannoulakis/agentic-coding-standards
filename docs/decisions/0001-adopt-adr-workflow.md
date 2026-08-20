---
status: accepted
date: 2026-08-20
tags: [workflow, documentation]
---

# Adopt ADR workflow for vibe coding

## Context

AI-assisted coding is fast. Without a written record, we forget why we picked a library, a layout, or a boundary. Reviewers and the next agent session need that why in the repo, not in chat history.

## Decision

Store ADRs as `docs/decisions/NNNN-slug.md` and commit each one with the code it describes. The **adr** skill runs before commit.

## Alternatives considered

- PR description only: rejected because PR text does not stay next to the code as the repo evolves
- External wiki: rejected because agents and reviewers split time between two sources

## Consequences

- Reviewers see the why before the diff
- Each ADR takes a few minutes to write
- Numbered files under `docs/decisions/` can go stale if we skip updates when design changes

## Confirmation

- Commits: bootstrap commit for this repo
- Checks: sequential ADR numbering; feature PRs include an ADR when the diff needs one
