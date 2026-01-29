# Copilot Instructions for copilot.fish

Fish shell plugin providing completions and utilities for GitHub Copilot CLI.

## Validation

```fish
# Syntax check all files
fish -n completions/copilot.fish
fish -n functions/*.fish

# Test completions interactively
complete -C"copilot --mo"
complete -C"copilot --agent "

# Test function definitions
source functions/yopilot.fish && functions yopilot
```

## Architecture

- **completions/copilot.fish**: All CLI completions using `complete -c copilot` syntax
- **functions/copilot.fish**: Wrapper that adds `--disable-builtin-mcps` by default
- **functions/yopilot.fish**: YOLO mode wrapper using `--wraps=copilot` for completion inheritance
- **functions/__fish_copilot_*.fish**: Private helpers (double underscore prefix) for dynamic completions

## Conventions

### Fish Shell Idioms
- Use `function` keyword with `--description` for user-facing functions
- Use `--wraps` on wrapper functions to inherit completions
- Use `set -l` for local variables, `test` for conditionals (not `[` or `[[`)
- Use `command` prefix when calling external binaries from wrapper functions

### Naming
- Public functions: lowercase, no underscores (e.g., `yopilot`)
- Private helpers: `__fish_` prefix (e.g., `__fish_copilot_models`)

### Completions
- Disable file completion with `-f` when appropriate
- Use `-x` for exclusive arguments, `-r` for required arguments
- Every completion needs a `-d` description

### Formatting
- 4 spaces indentation
- One function per file, filename matches function name
