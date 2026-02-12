# Copilot Instructions for copilot.fish

Fish shell plugin providing completions and utility wrapper functions for GitHub Copilot CLI.

## Build, test, and lint commands

There is no compile/build step for this repository. Validate changes with fish syntax checks and command-level completion probes:

```fish
# Syntax/lint checks
fish -n completions/copilot.fish
fish -n functions/*.fish

# Targeted completion checks (single-command probes)
complete -C"copilot --mo"
complete -C"copilot --agent "
complete -C"copilot plugin marketplace "

# Function definition check
source functions/yopilot.fish && functions -q yopilot
```

## High-level architecture

- `completions/copilot.fish`: Static completion definitions for top-level flags, subcommands, plugin flows, and help topics.
- `functions/yopilot.fish`: Public wrapper with `--wraps=copilot` to inherit completion behavior while defaulting to `--yolo`.
- `functions/copilot.fish`: Optional pass-through wrapper entry point for `copilot`.
- `functions/__fish_copilot_*.fish`: Private helper functions used by completions to dynamically enumerate models, agents, marketplaces, and plugins from CLI output.
- `.github/skills/update-completions/SKILL.md`: Repository skill for refreshing completions against current Copilot CLI help output.

## Code style and conventions

- Use Fish idioms: `function`, `set -l`, `test`, and command substitutions with parentheses.
- Use `command` when invoking external binaries from wrappers to avoid accidental recursion.
- Keep one function per file in `functions/`, and match filename to function name.
- Public functions should be lowercase without underscores; private helpers should use `__fish_` prefix.
- Completions should disable file suggestions (`-f`) when path completion is not intended, and every `complete` entry must have a `-d` description.
- Use 4-space indentation and keep completion entries grouped by section comments.

## Path-specific instructions

- `completions/**/*.fish`: Keep options synchronized with `copilot --help` and subcommand help output. Prefer explicit `-n` conditions for subcommand-specific entries.
- `functions/__fish_copilot_*.fish`: Parse CLI output defensively and keep output format stable (one completion token per line).
- `functions/*.fish`: User-facing wrappers should preserve Copilot CLI behavior and use `--wraps` when wrapping `copilot`.
- `.github/skills/**/SKILL.md`: Keep skill metadata concise and include reproducible command sequences for validation/update workflows.
