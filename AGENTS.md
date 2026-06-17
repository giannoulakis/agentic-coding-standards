### Core principles:
- Focus on getting core functionality working, then iterate. Don't over engineer. Missing features will be added later when needed or requested.
- Don't create abstractions for future flexibility unless there's a clear, immediate need.
- **Simplicity First**: Make every change as simple as possible. Impact minimal code.  
- **No Laziness**: Find root causes. No temporary fixes. Senior developer standards.
- Be short, pragmatic, direct to the point and concise. Remove verbosity.
- Ask for clarification if needed. When anything is non-obvious, call it out.
- Keep AGENTS.md short and concise. Only update it when user requests or when a new pattern is identified. This file is not specific for this project. It is a general guide for all projects.
### Code standards:
- Code should be intelligible, comprehensible, cohesive, with low cognitive load.
- Avoiding deep nesting. Return/continue/break early in a conditional or loop.
- Avoid indirect calls triggered indirectly via callbacks/events/promises. Avoid nested call chains when not necessary. Example: Function A calls B, which calls C, which calls D, etc. It’s hard to follow due to tangled dependencies and long stack trace.
- Prefer a single control flow and straightforward calls. 
- To reduce cognitive load, having some repetition is good tradeoff.
- Remove unused code (constants, methods, parameters) immediately.
### When implementing something, ask:
- What other parts related or unrelated with this change might be impacted?
- Any possible upstream or downstream impact?
- Do not quietly change security-sensitive behavior. Call it out.
