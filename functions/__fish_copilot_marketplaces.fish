function __fish_copilot_marketplaces
    # Parse marketplace names from 'copilot plugin marketplace list'
    # Output format: "  • marketplace-name (GitHub: owner/repo)"
    copilot plugin marketplace list 2>/dev/null | sed -n 's/^[[:space:]]*•[[:space:]]*\([^[:space:]]*\).*/\1/p'
end
