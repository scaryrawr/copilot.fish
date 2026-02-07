---
name: update-completions
description: >
  Update fish shell completions for the GitHub Copilot CLI based on its current help output.
  Use when asked to update, sync, or refresh completions, or when the CLI has been updated
  and completions need to match the latest flags, subcommands, and help topics.
license: MIT
compatibility: Requires copilot CLI and fish shell
---

# Update Copilot CLI Fish Completions

## When to Use

- When the Copilot CLI has been updated and completions may be out of date
- When asked to update, sync, or refresh the fish completions
- When new flags, subcommands, or help topics have been added to the CLI

## Instructions

1. Run the following commands to gather the current CLI help output:
   ```sh
   copilot --help
   copilot help commands
   copilot help config
   copilot help environment
   copilot help logging
   copilot help permissions
   copilot init --help
   copilot update --help
   copilot version --help
   copilot login --help
   copilot plugin --help
   copilot plugin install --help
   copilot plugin uninstall --help
   copilot plugin update --help
   copilot plugin list --help
   copilot plugin marketplace --help
   copilot plugin marketplace add --help
   copilot plugin marketplace remove --help
   copilot plugin marketplace list --help
   copilot plugin marketplace browse --help
   ```

2. Compare the help output against the existing completions in `completions/copilot.fish`.

3. Update `completions/copilot.fish` to reflect any changes:
   - Add completions for new flags and options
   - Remove completions for deprecated/removed flags
   - Update descriptions to match current help text
   - Add new subcommands or help topics
   - Use `-x` for exclusive arguments, `-r` for required arguments, `-f` to disable file completion
   - Every completion needs a `-d` description

4. Update the fallback model list in `functions/__fish_copilot_models.fish` if the set of available models has changed. Parse the model list from `copilot --help` output under the `--model` section.

5. Validate changes:
   ```fish
   fish -n completions/copilot.fish
   fish -n functions/__fish_copilot_models.fish
   ```

## Key Files

- `completions/copilot.fish` — All CLI completions using `complete -c copilot` syntax
- `functions/__fish_copilot_models.fish` — Dynamic model list with fallback values
- `functions/__fish_copilot_agents.fish` — Dynamic agent list from `~/.copilot/agents/`

## Conventions

- Disable file completion with `-f` when appropriate
- Use `__fish_use_subcommand` condition for top-level subcommand completions
- Use `__fish_seen_subcommand_from` condition for subcommand-specific completions
- 4 spaces indentation
- Keep completions grouped by section with comments
