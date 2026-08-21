# Agentic Coding Standards

Practical engineering standards for reducing complexity, improving maintainability, and guiding responsible AI-assisted software development

**Read the standards:** [`AGENTS.md`](./AGENTS.md) · **Repo rules:** [`AGENTS.repo.md`](./AGENTS.repo.md)

**Agent skills:** [`.agents/skills/`](./.agents/skills/)

| Skill | Use for |
|-------|---------|
| [`adr`](./.agents/skills/adr/SKILL.md) | Write or update architecture decision records during feature work |
| [`ai-pr`](./.agents/skills/ai-pr/SKILL.md) | Copy-pasteable branch → commit → push → PR commands from staged changes |
| [`ponytail`](./.agents/skills/ponytail/SKILL.md) | Simplest solution that works; YAGNI and minimal diffs |
| [`unslop`](./.agents/skills/unslop/SKILL.md) | Plain prose in docs, commits, and user-facing text |

## Architecture decision records

Feature and structural changes ship with a short ADR in [`docs/decisions/`](./docs/decisions/). Create or update the ADR as decisions land during the work session, not only before commit. Commit the ADR with the code in the same PR.

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
- Agent Skills for common workflows (install by copying `.agents/skills/` into your project or `~/.agents/skills/`)

## About

These principles are based on years of professional software development experience, especially the recurring patterns that make codebases easier or harder to maintain over time.
