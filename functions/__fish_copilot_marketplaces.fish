function __fish_copilot_marketplaces
    # Parse marketplace names from 'copilot plugin marketplace list'
    # Output includes both built-in and registered marketplaces, each prefixed
    # by a marker symbol and followed by the marketplace name.
    command copilot plugin marketplace list 2>/dev/null | awk '
        /^[[:space:]]+/ && NF >= 3 && $3 ~ /^\(/ {
            print $2
        }
    '
end
