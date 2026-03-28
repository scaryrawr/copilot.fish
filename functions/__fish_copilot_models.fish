function __fish_copilot_models
    set -l models (command copilot help config 2>/dev/null \
        | awk '
            /`model`:/ { in_model = 1; next }
            in_model && /^[[:space:]]+- "/ {
                seen = 1
                gsub(/^[[:space:]]+- "/, "")
                gsub(/"$/, "")
                print
                next
            }
            in_model && seen && /^[[:space:]]*$/ { exit }
        ')

    if test (count $models) -gt 0
        printf '%s\n' $models
        return
    end

    # Fallback in case help output parsing fails.
    printf '%s\n' claude-sonnet-4.6 claude-sonnet-4.5 claude-haiku-4.5 claude-opus-4.6 claude-opus-4.6-fast claude-opus-4.5 claude-sonnet-4 gpt-5.4 gpt-5.3-codex gpt-5.2-codex gpt-5.2 gpt-5.1-codex-max gpt-5.1-codex gpt-5.1 gpt-5.4-mini gpt-5.1-codex-mini gpt-5-mini gpt-4.1
end
