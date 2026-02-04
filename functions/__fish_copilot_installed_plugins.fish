function __fish_copilot_installed_plugins
    # Parse installed plugins from 'copilot plugin list'
    # Output format: "  • plugin-name@marketplace-name"
    copilot plugin list 2>/dev/null | sed -n 's/^[[:space:]]*•[[:space:]]*//p'
end
