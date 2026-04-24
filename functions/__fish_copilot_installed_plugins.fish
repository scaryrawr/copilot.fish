function __fish_copilot_installed_plugins
    # Parse installed plugins from 'copilot plugin list'
    # Output includes a marker symbol, the plugin identifier, and an optional
    # version suffix in parentheses.
    command copilot plugin list 2>/dev/null | awk '
        /^[[:space:]]+/ && NF >= 2 {
            print $2
        }
    '
end
