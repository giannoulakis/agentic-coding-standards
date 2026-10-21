---
name: learnings
description: "Record the session's lessons in the knowledge base (only if worth it)."
disable-model-invocation: true
---

Record **lessons** from this session so a future agent works better. A lesson is something a future agent would otherwise rediscover the hard way, or get wrong. A **log** (what was done, in what order) is not a lesson.

## Steps

1. Scan the session for candidate lessons:
   - Facts and decisions with their source: rules, owners, who decided what, where it was decided.
   - User corrections: what the agent assumed wrong, and the right answer.
   - Gotchas: tool or API behaviour that cost a retry or a wrong turn, plus the fix that worked.
   - Where to find things: a doc, query, channel or page that took effort to locate.
2. Keep a candidate only if it passes all three:
   - It still matters next week.
   - It changes what a future agent does.
   - The environment can't answer it cheaply (code, git history, a doc one search away). If it can, record a pointer to it instead of copying it.
3. Route each kept lesson to its single home: the places the project's `AGENTS.md` names for knowledge (memory file, links, task list). A tool or site recipe goes in the skill that covers that tool, marked tested or untested. If the project names no home, propose one and ask. Search first: update or replace the existing note, never stack a second version.
4. Write each lesson as one tight bullet with its source link. State the general rule, not the case it came from: no customer names, BIDs or amounts. The source link is enough to trace the example.

Done when every kept lesson sits in exactly one place. Zero lessons is a valid outcome: then write nothing.

## Report

One line per lesson: the file and the gist. Or just "Nothing worth recording."
