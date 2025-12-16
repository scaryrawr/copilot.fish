# Fish completions for GitHub Copilot CLI

function __fish_copilot_models
    set -l models (copilot --help 2>/dev/null \
        | awk '
            /--model <model>/{f=1}
            f{
              if($0 ~ /^  --[^ ]/ && $0 !~ /--model <model>/){exit}
              print
            }
          ' \
        | grep -o '"[^"]\+"' \
        | tr -d '"')

    if test (count $models) -gt 0
        printf '%s\n' $models
        return
    end

    # Fallback in case help output parsing fails.
    printf '%s\n' claude-sonnet-4.5 claude-haiku-4.5 claude-opus-4.5 claude-sonnet-4 gpt-5.1-codex-max gpt-5.1-codex gpt-5.2 gpt-5.1 gpt-5 gpt-5.1-codex-mini gpt-5-mini gpt-4.1 gemini-3-pro-preview
end

# Disable file completion by default
complete -c copilot -f

# Options
complete -c copilot -l add-dir -r -d 'Add a directory to the allowed list for file access'
complete -c copilot -l additional-mcp-config -r -d 'Additional MCP servers configuration as JSON string or file path'
complete -c copilot -l agent -r -d 'Specify a custom agent to use, only in prompt mode'
complete -c copilot -l allow-all-paths -d 'Disable file path verification and allow access to any path'
complete -c copilot -l allow-all-tools -d 'Allow all tools to run automatically without confirmation'
complete -c copilot -l allow-tool -r -d 'Allow specific tools'
complete -c copilot -l banner -d 'Show the startup banner'
complete -c copilot -l continue -d 'Resume the most recent session'
complete -c copilot -l deny-tool -r -d 'Deny specific tools'
complete -c copilot -l disable-builtin-mcps -d 'Disable all built-in MCP servers'
complete -c copilot -l disable-mcp-server -r -d 'Disable a specific MCP server'
complete -c copilot -l disable-parallel-tools-execution -d 'Disable parallel execution of tools'
complete -c copilot -l disallow-temp-dir -d 'Prevent automatic access to the system temporary directory'
complete -c copilot -l enable-all-github-mcp-tools -d 'Enable all GitHub MCP server tools'
complete -c copilot -s h -l help -d 'Display help for command'
complete -c copilot -s i -l interactive -r -d 'Start interactive mode and automatically execute this prompt'
complete -c copilot -l log-dir -r -d 'Set log file directory'
complete -c copilot -l log-level -xa 'none error warning info debug all default' -d 'Set the log level'
complete -c copilot -l model -x -a '(__fish_copilot_models)' -d 'Set the AI model to use'
complete -c copilot -l no-color -d 'Disable all color output'
complete -c copilot -l no-custom-instructions -d 'Disable loading of custom instructions from AGENTS.md'
complete -c copilot -s p -l prompt -r -d 'Execute a prompt directly without interactive mode'
complete -c copilot -l resume -r -d 'Resume from a previous session'
complete -c copilot -s s -l silent -d 'Output only the agent response, useful for scripting'
complete -c copilot -l screen-reader -d 'Enable screen reader optimizations'
complete -c copilot -l stream -xa 'on off' -d 'Enable or disable streaming mode'
complete -c copilot -s v -l version -d 'Show version information'

# Commands
complete -c copilot -n __fish_use_subcommand -a help -d 'Display help information'

# Help topics
complete -c copilot -n '__fish_seen_subcommand_from help' -a 'config' -d 'Configuration Settings'
complete -c copilot -n '__fish_seen_subcommand_from help' -a 'commands' -d 'Interactive Mode Commands'
complete -c copilot -n '__fish_seen_subcommand_from help' -a 'environment' -d 'Environment Variables'
complete -c copilot -n '__fish_seen_subcommand_from help' -a 'logging' -d 'Logging'
complete -c copilot -n '__fish_seen_subcommand_from help' -a 'permissions' -d 'Tool Permissions'
