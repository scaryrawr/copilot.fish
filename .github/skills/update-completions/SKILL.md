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

1. Enumerate the current CLI surface area from the live help output. Treat `copilot help --help` as the source of truth for help topics instead of assuming a fixed list.
   ```sh
   copilot --help
   copilot help --help
   copilot help commands
   copilot help config
   copilot help environment
   copilot help logging
   copilot help monitoring
   copilot help permissions
   copilot help providers
   copilot init --help
   copilot update --help
   copilot version --help
   copilot login --help
   copilot mcp --help
   copilot mcp add --help
   copilot mcp get --help
   copilot mcp list --help
   copilot mcp remove --help
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

   If `copilot help --help` lists additional topics beyond the current set, run `copilot help <topic>` for those too.

2. Compare the help output against the existing completions and helper functions:
   - `completions/copilot.fish`
   - relevant `functions/__fish_copilot_*.fish` helpers for dynamic arguments

3. Update `completions/copilot.fish` and any relevant helper functions to reflect changes:
   - Add completions for new flags and options
   - Remove completions for deprecated/removed flags
   - Update descriptions to match current help text
   - Add new subcommands or help topics
   - Add or update dynamic helper functions when commands accept discoverable names (for example models, agents, marketplaces, plugins, or MCP servers)
   - Use `-x` for exclusive arguments, `-r` for required arguments, `-f` to disable file completion
   - Every completion needs a `-d` description

4. Update the fallback model list in `functions/__fish_copilot_models.fish` if the set of available models has changed. Parse the model list from `copilot help config` under the `model` setting, since that help topic is the authoritative list.

5. Validate changes:
   ```fish
   fish -n completions/copilot.fish
   fish -n functions/*.fish

   # Run targeted completion probes for the surfaces you changed.
   complete -C"copilot --mo"
   complete -C"copilot help "
   complete -C"copilot mcp "
   complete -C"copilot plugin marketplace "
   ```

## Key Files

- `completions/copilot.fish` — All CLI completions using `complete -c copilot` syntax
- `functions/__fish_copilot_models.fish` — Dynamic model list with fallback values
- `functions/__fish_copilot_agents.fish` — Dynamic agent list from `~/.copilot/agents/`
- `functions/__fish_copilot_*.fish` — Other dynamic argument helpers, including marketplaces, plugins, and MCP servers

## Conventions

- Disable file completion with `-f` when appropriate
- Use `__fish_use_subcommand` condition for top-level subcommand completions
- Use `__fish_seen_subcommand_from` condition for subcommand-specific completions
- Use the live help output as the source of truth; avoid assuming help topics or command trees are static
- 4 spaces indentation
- Keep completions grouped by section with comments
