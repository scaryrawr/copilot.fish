# Fish completions for GitHub Copilot CLI

# Clear any generated or previously loaded completions before defining ours.
complete -c copilot -e

# Disable file completion by default
complete -c copilot -f

# Options
complete -c copilot -l effort -xa 'none minimal low medium high xhigh max' -d 'Set the reasoning effort level'
complete -c copilot -l acp -d 'Start as Agent Client Protocol server'
complete -c copilot -l add-dir -r -a '(__fish_complete_directories)' -d 'Add a directory to the allowed list for file access (can be used multiple times)'
complete -c copilot -l add-github-mcp-tool -r -f -d 'Add a tool to enable for the GitHub MCP server instead of the default CLI subset (can be used multiple times). Use "*" for all tools.'
complete -c copilot -l add-github-mcp-toolset -r -f -d 'Add a toolset to enable for the GitHub MCP server instead of the default CLI subset (can be used multiple times). Use "all" for all toolsets.'
complete -c copilot -l additional-mcp-config -r -f -d 'Additional MCP servers configuration as JSON string or file path (prefix with @) (can be used multiple times; augments config from ~/.copilot/mcp-config.json for this session)'
complete -c copilot -l agent -x -a '(__fish_copilot_agents)' -d 'Specify a custom agent to use'
complete -c copilot -l allow-all -d 'Enable all permissions (equivalent to --allow-all-tools --allow-all-paths --allow-all-urls)'
complete -c copilot -l allow-all-mcp-server-instructions -d 'Include initialization instructions from all MCP servers in the system prompt instead of only allowlisted servers'
complete -c copilot -l allow-all-paths -d 'Disable file path verification and allow access to any path'
complete -c copilot -l allow-all-tools -d 'Allow all tools to run automatically without confirmation; required for non-interactive mode'
complete -c copilot -l allow-all-urls -d 'Allow access to all URLs without confirmation'
complete -c copilot -l allow-tool -r -f -d 'Tools the CLI has permission to use; will not prompt for permission'
complete -c copilot -l allow-url -r -f -d 'Allow access to specific URLs or domains'
complete -c copilot -l attachment -r -F -d 'Attach a file (image or native document) to the initial prompt; only valid in non-interactive mode (can be used multiple times)'
complete -c copilot -l autopilot -d 'Start in autopilot mode'
complete -c copilot -l available-tools -r -f -d 'Only these tools will be available to the model'
complete -c copilot -l banner -d 'Show the startup banner'
complete -c copilot -l bash-env -a 'on off' -d 'Enable BASH_ENV support for bash shells (on|off)'
complete -c copilot -n '__fish_prev_arg_in --bash-env' -a 'on off' -d 'Enable BASH_ENV support for bash shells (on|off)'
complete -c copilot -s C -r -a '(__fish_complete_directories)' -d 'Change working directory before doing anything else'
complete -c copilot -l connect -r -f -d 'Connect directly to a remote session (optionally specify session ID or task ID)'
complete -c copilot -l context -xa 'default long_context' -d 'Set the context window tier'
complete -c copilot -l continue -d 'Resume the most recent session'
complete -c copilot -l deny-tool -r -f -d 'Tools the CLI does not have permission to use; will not prompt for permission'
complete -c copilot -l deny-url -r -f -d 'Deny access to specific URLs or domains, takes precedence over --allow-url'
complete -c copilot -l disable-builtin-mcps -d 'Disable all built-in MCP servers (currently: github-mcp-server)'
complete -c copilot -l disable-mcp-server -x -a '(__fish_copilot_mcp_servers)' -d 'Disable a specific MCP server'
complete -c copilot -l disallow-temp-dir -d 'Prevent automatic access to the system temporary directory'
complete -c copilot -l enable-all-github-mcp-tools -d 'Enable all GitHub MCP server tools instead of the default CLI subset. Overrides --add-github-mcp-toolset and --add-github-mcp-tool options.'
complete -c copilot -l enable-memory -d 'Enable memory in prompt mode'
complete -c copilot -l enable-reasoning-summaries -d 'Request reasoning summaries for OpenAI models'
complete -c copilot -l excluded-tools -r -f -d 'These tools will not be available to the model'
complete -c copilot -l experimental -d 'Enable experimental features'
complete -c copilot -l extension-sdk-path -r -a '(__fish_complete_directories)' -d 'Override the bundled Copilot SDK for extension subprocesses'
complete -c copilot -l no-experimental -d 'Disable experimental features'
complete -c copilot -s h -l help -d 'display help for command'
complete -c copilot -s i -l interactive -r -f -d 'Start interactive mode and automatically execute this prompt'
complete -c copilot -l log-dir -r -a '(__fish_complete_directories)' -d 'Set log file directory (default: ~/.copilot/logs/)'
complete -c copilot -l log-level -xa 'none error warning info debug all default' -d 'Set the log level'
complete -c copilot -l max-ai-credits -r -f -d 'Set max AI credits for this session'
complete -c copilot -l max-autopilot-continues -r -f -d 'Maximum number of continuation messages in autopilot mode (default: 5)'
complete -c copilot -l mode -xa 'interactive plan autopilot' -d 'Set the initial agent mode'
complete -c copilot -l model -x -a '(__fish_copilot_models) auto' -d 'Set the AI model to use'
complete -c copilot -l mouse -a 'on off' -d 'Enable mouse support in alt screen mode (on|off)'
complete -c copilot -n '__fish_prev_arg_in --mouse' -a 'on off' -d 'Enable mouse support in alt screen mode (on|off)'
complete -c copilot -s n -l name -r -f -d 'Set a name for the new session'
complete -c copilot -l no-ask-user -d 'Disable the ask_user tool (agent works autonomously without asking questions)'
complete -c copilot -l no-auto-update -d 'Disable downloading CLI update automatically (disabled by default in CI environments)'
complete -c copilot -l no-bash-env -d 'Disable BASH_ENV support for bash shells'
complete -c copilot -l no-color -d 'Disable all color output'
complete -c copilot -l no-custom-instructions -d 'Disable loading of custom instructions from AGENTS.md and related files'
complete -c copilot -s p -l prompt -r -f -d 'Execute a prompt in non-interactive mode (exits after completion)'
complete -c copilot -l output-format -xa 'text json' -d 'Output format: ''text'' (default) or ''json'' (JSONL, one JSON object per line)'
complete -c copilot -l plain-diff -d 'Disable rich diff rendering (syntax highlighting via diff tool specified by git config)'
complete -c copilot -l plan -d 'Start in plan mode'
complete -c copilot -l plugin-dir -r -a '(__fish_complete_directories)' -d 'Load a plugin from a local directory (can be used multiple times)'
complete -c copilot -l remote -d 'Enable remote control of your session from GitHub web and mobile'
complete -c copilot -l remote-export -d 'Export your session to GitHub web and mobile'
complete -c copilot -l reasoning-effort -xa 'none minimal low medium high xhigh max' -d 'Set the reasoning effort level'
complete -c copilot -l no-mouse -d 'Disable mouse support in alt screen mode'
complete -c copilot -l no-remote -d 'Disable remote control of your session from GitHub web and mobile'
complete -c copilot -l no-remote-export -d 'Disable exporting your session to GitHub web and mobile'
complete -c copilot -s r -l resume -r -f -d 'Resume from a previous session (optionally specify existing session ID, task ID, ID prefix, or name; name matching is exact, case-insensitive)'
complete -c copilot -s s -l silent -d 'Output only the agent response (no stats), useful for scripting with -p'
complete -c copilot -l screen-reader -d 'Enable screen reader optimizations'
complete -c copilot -l secret-env-vars -r -f -d 'Environment variable names whose values are stripped from shell and MCP server environments and redacted from output (e.g., --secret-env-vars=MY_KEY,OTHER_KEY)'
complete -c copilot -l session-id -r -f -d 'Resume an existing session or task by ID, or set the UUID for a new session'
complete -c copilot -l share -r -F -d 'Share session to markdown file after completion in non-interactive mode (default: ./copilot-session-<id>.md)'
complete -c copilot -l share-gist -d 'Share session to a secret GitHub gist after completion in non-interactive mode'
complete -c copilot -l stream -xa 'on off' -d 'Enable or disable streaming mode'
complete -c copilot -s v -l version -d 'show version information'
complete -c copilot -l yolo -d 'Enable all permissions (equivalent to --allow-all-tools --allow-all-paths --allow-all-urls)'

# Commands
complete -c copilot -n __fish_use_subcommand -a completion -d 'Generate a shell completion script'
complete -c copilot -n __fish_use_subcommand -a help -d 'Display help information'
complete -c copilot -n __fish_use_subcommand -a init -d 'Initialize Copilot instructions'
complete -c copilot -n __fish_use_subcommand -a login -d 'Authenticate with Copilot'
complete -c copilot -n __fish_use_subcommand -a mcp -d 'Manage MCP servers'
complete -c copilot -n __fish_use_subcommand -a plugin -d 'Manage plugins'
complete -c copilot -n __fish_use_subcommand -a plugins -d 'Inspect configured plugins across kinds'
complete -c copilot -n __fish_use_subcommand -a skill -d 'Manage skills'
complete -c copilot -n __fish_use_subcommand -a update -d 'Download the latest version'
complete -c copilot -n __fish_use_subcommand -a version -d 'Display version information'

# completion subcommand options
complete -c copilot -n '__fish_copilot_token_is 2 completion' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 completion; and not __fish_copilot_token_is 3 bash; and not __fish_copilot_token_is 3 zsh; and not __fish_copilot_token_is 3 fish' -xa 'bash zsh fish' -d 'Target shell'

# init subcommand options
complete -c copilot -n '__fish_seen_subcommand_from init' -s h -l help -d 'display help for command'

# update subcommand options
complete -c copilot -n '__fish_seen_subcommand_from update' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 update; and not __fish_copilot_token_is 3 prerelease' -xa 'prerelease' -d 'Update channel'

# version subcommand options
complete -c copilot -n '__fish_seen_subcommand_from version' -s h -l help -d 'display help for command'

# help subcommand options
complete -c copilot -n '__fish_seen_subcommand_from help' -s h -l help -d 'display help for command'

# login subcommand options
complete -c copilot -n '__fish_seen_subcommand_from login' -l host -r -f -d 'GitHub host URL (default: https://github.com)'
complete -c copilot -n '__fish_seen_subcommand_from login' -s h -l help -d 'display help for command'

# mcp subcommand
complete -c copilot -n '__fish_seen_subcommand_from mcp; and not __fish_seen_subcommand_from add get help list remove' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and not __fish_seen_subcommand_from add get help list remove' -a add -d 'Add an MCP server'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and not __fish_seen_subcommand_from add get help list remove' -a get -d 'Show server details'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and not __fish_seen_subcommand_from add get help list remove' -a help -d 'display help for command'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and not __fish_seen_subcommand_from add get help list remove' -a list -d 'List configured MCP servers'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and not __fish_seen_subcommand_from add get help list remove' -a remove -d 'Remove an MCP server'

# mcp add options
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l env -r -f -d 'Environment variable (KEY=VALUE, can be repeated)'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l header -r -f -d 'HTTP header for remote servers, can be repeated'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l json -d 'Output added config as JSON'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l show-secrets -d 'Show full environment variable and header values in output, masked by default'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l timeout -r -f -d 'Timeout in milliseconds'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l tools -r -f -d 'Tool filter: "*" for all, comma-separated list, or "" for none'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from add' -l transport -xa 'stdio http sse' -d 'Server transport'

# mcp get options
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from get' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from get' -l json -d 'Output as JSON'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from get' -l show-secrets -d 'Show full environment variable and header values (masked by default)'

# mcp list options
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from list' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from list' -l json -d 'Output as JSON'

# mcp remove options
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from remove' -s h -l help -d 'display help for command'

# mcp arguments
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from get' -xa '(__fish_copilot_mcp_servers)' -d 'Server name'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from help' -a 'add get list remove' -d 'MCP command'
complete -c copilot -n '__fish_seen_subcommand_from mcp; and __fish_seen_subcommand_from remove' -xa '(__fish_copilot_mcp_servers)' -d 'Server name'

# plugin subcommand
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and not __fish_copilot_token_is 3 install; and not __fish_copilot_token_is 3 uninstall; and not __fish_copilot_token_is 3 update; and not __fish_copilot_token_is 3 list; and not __fish_copilot_token_is 3 marketplace' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and not __fish_copilot_token_is 3 install; and not __fish_copilot_token_is 3 uninstall; and not __fish_copilot_token_is 3 update; and not __fish_copilot_token_is 3 list; and not __fish_copilot_token_is 3 marketplace' -a install -d 'Install a plugin'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and not __fish_copilot_token_is 3 install; and not __fish_copilot_token_is 3 uninstall; and not __fish_copilot_token_is 3 update; and not __fish_copilot_token_is 3 list; and not __fish_copilot_token_is 3 marketplace' -a uninstall -d 'Uninstall a plugin'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and not __fish_copilot_token_is 3 install; and not __fish_copilot_token_is 3 uninstall; and not __fish_copilot_token_is 3 update; and not __fish_copilot_token_is 3 list; and not __fish_copilot_token_is 3 marketplace' -a update -d 'Update a plugin'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and not __fish_copilot_token_is 3 install; and not __fish_copilot_token_is 3 uninstall; and not __fish_copilot_token_is 3 update; and not __fish_copilot_token_is 3 list; and not __fish_copilot_token_is 3 marketplace' -a list -d 'List installed plugins'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and not __fish_copilot_token_is 3 install; and not __fish_copilot_token_is 3 uninstall; and not __fish_copilot_token_is 3 update; and not __fish_copilot_token_is 3 list; and not __fish_copilot_token_is 3 marketplace' -a marketplace -d 'Manage plugin marketplaces'

# plugin install options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 install' -s h -l help -d 'display help for command'

# plugin uninstall options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 uninstall' -s h -l help -d 'display help for command'

# plugin update options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 update' -l all -d 'Update all installed plugins'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 update' -s h -l help -d 'display help for command'

# plugin list options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 list' -s h -l help -d 'display help for command'

# plugin install/uninstall/update arguments
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 install' -xa '(__fish_copilot_marketplace_plugins)' -d 'Plugin source (plugin@marketplace, owner/repo, owner/repo:path, or URL)'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 uninstall' -xa '(__fish_copilot_installed_plugins)' -d 'Plugin name (plugin-name or plugin-name@marketplace-name)'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 update' -xa '(__fish_copilot_installed_plugins)' -d 'Plugin name'

# plugin marketplace subcommand
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 update' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 update' -a add -d 'Add a marketplace'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 update' -a remove -d 'Remove a marketplace'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 update' -a list -d 'List registered marketplaces'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 update' -a browse -d 'Browse plugins in a marketplace'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 update' -a update -d 'Update marketplace plugin catalogs'

# plugin marketplace add options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 add' -s h -l help -d 'display help for command'

# plugin marketplace browse options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 browse' -s h -l help -d 'display help for command'

# plugin marketplace list options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 list' -s h -l help -d 'display help for command'

# plugin marketplace remove options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 remove' -s f -l force -d 'Force removal even if plugins are installed'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 remove' -s h -l help -d 'display help for command'

# plugin marketplace update options
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 update' -s h -l help -d 'display help for command'

# plugin marketplace arguments
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 add' -F -d 'Marketplace source (owner/repo, URL, or local path)'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 browse' -xa '(__fish_copilot_marketplaces)' -d 'Marketplace name'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 remove' -xa '(__fish_copilot_marketplaces)' -d 'Marketplace name'
complete -c copilot -n '__fish_copilot_token_is 2 plugin; and __fish_copilot_token_is 3 marketplace; and __fish_copilot_token_is 4 update' -xa '(__fish_copilot_marketplaces)' -d 'Marketplace name (omit to update all)'

# plugins subcommand
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a disable -d 'Disable a configured tool'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a enable -d 'Enable a configured tool'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a install -d 'Install a new tool'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a list -d 'List configured plugins across kinds'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a marketplace -d 'Manage plugin marketplaces'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a remove -d 'Remove an installed tool'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a update -d 'Update a plugin'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a add -d 'Install a new tool'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a marketplaces -d 'Manage plugin marketplaces'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and not __fish_seen_subcommand_from add disable enable install list marketplace marketplaces remove rm update' -a rm -d 'Remove an installed tool'

# plugins install options
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add' -l mcp -d 'Install an MCP server'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add' -l plugin -d 'Install a plugin'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add' -l scope -xa 'user project' -d 'Set the install target for a skill'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add' -l skill -d 'Install a skill from a local path or URL'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add; and not __fish_seen_subcommand_from --skill' -xa '(__fish_copilot_marketplace_plugins)' -d 'Plugin source'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from install add; and __fish_seen_subcommand_from --skill' -F -d 'Skill source'

# plugins list options
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 list' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 list' -l json -d 'Emit machine-readable JSON instead of grouped text'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 list' -l kind -r -xa 'plugin mcp skill instruction lsp' -d 'Filter by resource kind'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 list' -l scope -r -xa 'user repository organization plugin builtin unknown' -d 'Filter by configuration scope'

# plugins enable, disable, and remove options
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm' -l mcp -d 'Target an MCP server'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm' -l plugin -d 'Target a plugin'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm' -l skill -d 'Target a skill'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm; and __fish_seen_subcommand_from --mcp' -xa '(__fish_copilot_mcp_servers)' -d 'MCP server name'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm; and __fish_seen_subcommand_from --skill' -xa '(__fish_copilot_skills)' -d 'Skill name'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from enable disable remove rm; and not __fish_seen_subcommand_from --mcp; and not __fish_seen_subcommand_from --skill' -xa '(__fish_copilot_installed_plugins)' -d 'Plugin name'

# plugins update options
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 update' -l all -d 'Update all installed plugins'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 update' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_copilot_token_is 3 update' -xa '(__fish_copilot_installed_plugins)' -d 'Plugin name'

# plugins marketplace subcommand
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and not __fish_copilot_token_is 4 add; and not __fish_copilot_token_is 4 browse; and not __fish_copilot_token_is 4 list; and not __fish_copilot_token_is 4 ls; and not __fish_copilot_token_is 4 remove; and not __fish_copilot_token_is 4 rm; and not __fish_copilot_token_is 4 update; and not __fish_copilot_token_is 4 refresh' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and not __fish_seen_subcommand_from add browse list ls remove rm update refresh' -a 'add browse list remove update' -d 'Manage plugin marketplaces'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and not __fish_seen_subcommand_from ls' -a ls -d 'List registered plugin marketplaces'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and not __fish_seen_subcommand_from rm' -a rm -d 'Remove a plugin marketplace'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and not __fish_seen_subcommand_from refresh' -a refresh -d 'Refresh marketplace plugin catalogs'

# plugins marketplace options and arguments
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from browse' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from browse' -l json -d 'Emit machine-readable JSON instead of grouped text'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from list ls' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from list ls' -l json -d 'Emit machine-readable JSON instead of grouped text'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from remove rm' -s f -l force -d 'Also uninstall every plugin sourced from this marketplace'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from remove rm' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from update refresh' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from add' -F -d 'Marketplace source'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from browse' -xa '(__fish_copilot_marketplaces)' -d 'Marketplace name'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from remove rm' -xa '(__fish_copilot_marketplaces)' -d 'Marketplace name'
complete -c copilot -n '__fish_copilot_token_is 2 plugins; and __fish_seen_subcommand_from marketplace marketplaces; and __fish_seen_subcommand_from update refresh' -xa '(__fish_copilot_marketplaces)' -d 'Marketplace name (omit to refresh all)'

# skill subcommand
complete -c copilot -n '__fish_copilot_token_is 2 skill; and not __fish_seen_subcommand_from add list remove' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 skill; and not __fish_seen_subcommand_from add list remove' -a 'add list remove' -d 'Manage skills'

# skill add options and arguments
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from add' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from add' -l project -d 'Install the skill into the project skills directory'
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from add' -F -d 'Skill source'

# skill list options
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from list' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from list' -l json -d 'Output as JSON'

# skill remove options and arguments
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from remove' -s h -l help -d 'display help for command'
complete -c copilot -n '__fish_copilot_token_is 2 skill; and __fish_seen_subcommand_from remove' -xa '(__fish_copilot_skills)' -d 'Skill name or custom skill directory'

# Help topics
complete -c copilot -n '__fish_seen_subcommand_from help' -xa '(__fish_copilot_help_topics)' -d 'Help topic'
