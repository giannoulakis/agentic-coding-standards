# Agentic Coding Standards

Practical engineering standards for reducing complexity, improving maintainability, and guiding responsible AI-assisted software development

**Read the standards:** [`AGENTS.md`](./AGENTS.md) · **Repo rules:** [`AGENTS.repo.md`](./AGENTS.repo.md)

**Agent skills:** [`.agents/skills/`](./.agents/skills/)

| Skill | Use for |
|-------|---------|
| [`adr`](./.agents/skills/adr/SKILL.md) | Write or update architecture decision records during feature work |
| [`learnings`](./.agents/skills/learnings/SKILL.md) | Record a session's lessons in the knowledge base, only if worth it |
| [`ponytail`](./.agents/skills/ponytail/SKILL.md) | Simplest solution that works; YAGNI and minimal diffs |
| [`retro`](./.agents/skills/retro/SKILL.md) | Retrospective on a coding session; suggests environment improvements |
| [`unslop`](./.agents/skills/unslop/SKILL.md) | Plain prose in docs, commits, and user-facing text |
| [`writing-for-agents`](./.agents/skills/writing-for-agents/SKILL.md) | Writing skills, `AGENTS.md`, and other docs agents read |

## Architecture decision records

Feature and structural changes ship with an ADR in [`docs/decisions/`](./docs/decisions/). Create or update the ADR as decisions land during the work session, not only before commit. Commit the ADR with the code in the same PR.

In Cursor, `.cursor/rules/adr.mdc` and `.cursor/rules/unslop.mdc` apply the ADR and unslop skills on every session.

## Why This Exists

Modern software teams increasingly use AI coding tools, but those tools need clear engineering boundaries. This guide defines the standards I expect from code contributions, whether written by a human or an AI assistant.

## Principles

- Simplicity before abstraction
- Root-cause fixes over temporary patches
- Low cognitive load
- Clear control flow
- Minimal blast radius
- Explicit handling of security-sensitive changes

## Intended Use

This can be used as:

- A personal engineering standard
- A project-level `AGENTS.md`
- A lightweight team coding guide
- A prompt foundation for AI-assisted development
- A review checklist for maintainability
- Agent Skills for common workflows (copy or symlink each `.agents/skills/<name>` into your project or `~/.agents/skills/`; symlinks stay current)

## About

These principles are based on years of professional software development experience, especially the recurring patterns that make codebases easier or harder to maintain over time.
