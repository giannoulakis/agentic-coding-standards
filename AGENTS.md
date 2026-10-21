### Core principles:
- Build the minimum that works: load the `ponytail` skill for every coding task (writing, fixing, refactoring, reviewing, choosing dependencies).
- Resolve ambiguity with a sensible default and state it in one line. Ask only when no safe default exists.
- Keep repo-specific instructions in `AGENTS.repo.md`. Edit this shared file only on request or for a new cross-project pattern.
### Code standards (low cognitive load):
- Keep existing comments when editing; remove one only when it is wrong or obsolete.
- Return, continue, or break early instead of nesting.
- Keep one visible control flow with direct calls. Use callbacks, events, or deep call chains (A calls B calls C calls D) only when the design needs them.
- Prefer a little repetition over a new abstraction. Reuse helpers that already exist.
- Delete code your change leaves unused: constants, methods, parameters.
### Scope:
- Change only what the task touches, unless evidence requires more. Mention unrelated problems instead of fixing them.
- Call out any change to security-sensitive behavior.
### Improving prompts:
When the user asks to improve a prompt, make sure it clearly answers:
- What the user wants / what to do
- What the user doesn't want / what not to do
- Where we're at / what to check before executing
- Definition of done / how to check the results

If the prompt is missing one of these, ask the user instead of guessing.
