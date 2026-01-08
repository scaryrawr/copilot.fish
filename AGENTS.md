# AI Agent Onboarding - copilot.fish

## Project Overview

**copilot.fish** is a Fish shell plugin that provides command-line completions and utilities for the GitHub Copilot CLI. This is a lightweight Fish shell integration package with minimal dependencies.

### Purpose
- Provide comprehensive shell completions for `copilot` command
- Offer convenience functions for common workflows
- Enable custom agent definitions through `.agent.md` files

### Key Components
- **completions/copilot.fish**: Full CLI completions for all copilot flags and options
- **functions/yopilot.fish**: YOLO mode wrapper (`--allow-all-tools --allow-all-paths`)
- **functions/copilot.fish**: Basic copilot function wrapper
- **functions/__fish_copilot_models.fish**: Dynamic model name completion helper
- **functions/__fish_copilot_agents.fish**: Custom agent discovery helper

## Project Structure

```
copilot.fish/
├── completions/
│   └── copilot.fish          # CLI completions
├── functions/
│   ├── copilot.fish          # Base wrapper function
│   ├── yopilot.fish          # YOLO mode convenience function
│   ├── __fish_copilot_models.fish    # Model completion helper
│   └── __fish_copilot_agents.fish    # Agent discovery helper
├── LICENSE                    # MIT License
└── README.md                  # User documentation
```

## Technology Stack

- **Language**: Fish shell script (`.fish` files)
- **Package Manager**: Fisher (for installation)
- **Target Platform**: Fish shell 3.0+
- **Integration**: GitHub Copilot CLI

## Development Guidelines

### Code Style

**Fish Shell Best Practices:**
- Use `function` keyword for all functions
- Include `--description` flag for user-facing functions
- Use `--wraps` for wrapper functions (inherits completions)
- Prefer `set -l` for local variables
- Use `test` for conditionals, not `[` or `[[`
- Use `command` prefix to call external binaries from wrapper functions

**Function Naming:**
- Public functions: `functionname` (lowercase, no underscores)
- Private/helper functions: `__fish_prefix_name` (double underscore prefix)
- Completions should match the command name

### File Organization

**Completions** (`completions/`):
- Named after the command they complete
- Use `complete -c commandname` syntax
- Disable file completion with `-f` when appropriate
- Use `-x` for exclusive arguments, `-r` for required arguments

**Functions** (`functions/`):
- One function per file
- Filename matches function name
- Auto-loaded by Fish when called

### Testing

**Manual Testing:**
```fish
# Source functions manually for testing
source functions/yopilot.fish
source functions/copilot.fish

# Test completions
complete -C"copilot --mo"
complete -C"copilot --agent "

# Test yopilot function
yopilot --help
```

**Validation Commands:**
```fish
# Syntax check all Fish files
fish -n completions/copilot.fish
fish -n functions/*.fish

# Test function loading
functions yopilot
functions __fish_copilot_models
```

### Formatting

**Fish files are self-formatting** - Fish shell does not have a standard formatter like `shfmt` for bash. Follow these conventions:

- 4 spaces for indentation
- Keep lines under 120 characters when reasonable
- One statement per line
- Blank lines between logical sections

### Important GitHub Copilot CLI Options

When making changes, be aware of these key copilot options:

**Permission Controls:**
- `--allow-all-tools`: Auto-approve all tool executions
- `--allow-all-paths`: Disable path verification
- `--allow-tool <name>`: Whitelist specific tools
- `--deny-tool <name>`: Blacklist specific tools

**Agent & Model Selection:**
- `--agent <name>`: Use custom agent from `~/.copilot/agents/`
- `--model <model>`: Select AI model (claude-sonnet-4.5, gpt-5, etc.)

**Mode Selection:**
- `-i, --interactive <prompt>`: Interactive mode with initial prompt
- `-p, --prompt <text>`: One-shot prompt mode
- `--continue`: Resume most recent session

**Output Control:**
- `-s, --silent`: Output only agent response (for scripting)
- `--no-color`: Disable colored output
- `--stream on|off`: Control streaming mode

## Custom Instructions

This AGENTS.md file serves as custom instructions for AI agents working on this codebase. The GitHub Copilot CLI automatically loads this file (unless `--no-custom-instructions` is used).

### For AI Agents Working on This Project

1. **Respect simplicity**: This is a minimal plugin - don't over-engineer
2. **Test in Fish shell**: Always validate Fish syntax with `fish -n`
3. **Maintain compatibility**: Support Fish 3.0+ features only
4. **Follow conventions**: Use Fish idioms, not bash-isms
5. **Document completions**: Every completion should have a description
6. **Preserve wrapping**: Keep `--wraps` on wrapper functions for completion inheritance

### Common Tasks

**Adding a new completion:**
1. Edit `completions/copilot.fish`
2. Use `complete -c copilot` with appropriate flags
3. Test with `complete -C"copilot <partial-command>"`

**Adding a new function:**
1. Create `functions/functionname.fish`
2. Define function with description
3. Test by sourcing and calling

**Updating model list:**
1. Check `__fish_copilot_models.fish` for parsing logic
2. Fallback list is provided for reliability
3. Primary source is `copilot --help` output

## License

MIT License - see LICENSE file for details.
