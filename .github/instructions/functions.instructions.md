---
applyTo: "functions/**/*.fish"
---

## Function authoring rules

- Keep one function per file, with filename matching the function name.
- Use `--description` for public user-facing functions.
- Use `--wraps=copilot` on wrappers to inherit completions.
- Use `set -l` for local variables and `test` for conditionals.
- Use `command` when invoking external commands from wrappers to avoid self-recursion.
- Private helper functions should use the `__fish_` prefix and produce stable, newline-delimited output for completions.
