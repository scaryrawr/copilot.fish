# copilot.fish

Fish shell completions and utilities for [GitHub Copilot CLI](https://github.com/features/copilot/cli/).

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install scaryrawr/copilot.fish
```

## Features

### Completions

Full command-line completions for the `copilot` command, including:

- All command-line options and flags
- Model selection (`--model`)
- Log levels (`--log-level`)
- Streaming options (`--stream`)
- Help topics

### YOLO Mode

The `yopilot` function provides a convenient wrapper that runs Copilot in "YOLO mode" with all permissions enabled:

```fish
yopilot
```

This is equivalent to:

```fish
copilot --allow-all-tools --allow-all-paths
```

## License

MIT
