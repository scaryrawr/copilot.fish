---
applyTo: "completions/**/*.fish"
---

## Completion authoring rules

- Keep completion text aligned with `copilot --help` and relevant subcommand `--help` output.
- Use `complete -c copilot -f` to disable file completions unless a completion explicitly requires a path argument.
- Use `-x` for exclusive arguments and `-r` for arguments that require a value.
- Include `-d` descriptions on every completion entry.
- Keep related completion blocks grouped with comments (top-level flags, subcommands, plugin marketplace, help topics).
