function __fish_copilot_marketplace_plugins
    # List available plugins from all registered marketplaces
    # Outputs in plugin@marketplace format for install completions
    for marketplace in (__fish_copilot_marketplaces)
        copilot plugin marketplace browse $marketplace 2>/dev/null \
            | sed -n "s/^[[:space:]]*•[[:space:]]*\([^[:space:]]*\).*/\1@$marketplace/p"
    end
end
