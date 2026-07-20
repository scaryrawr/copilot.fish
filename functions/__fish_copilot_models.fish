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
    printf '%s\n' \
        claude-sonnet-5 \
        claude-sonnet-4.6 \
        claude-sonnet-4.5 \
        claude-haiku-4.5 \
        claude-fable-5 \
        claude-opus-4.8 \
        claude-opus-4.8-fast \
        claude-opus-4.7 \
        claude-opus-4.6 \
        claude-opus-4.5 \
        gpt-5.6-sol \
        gpt-5.6-terra \
        gpt-5.6-luna \
        gpt-5.5 \
        gpt-5.4 \
        gpt-5.3-codex \
        gpt-5.4-mini \
        gpt-5-mini \
        gemini-3.1-pro-preview \
        gemini-3.5-flash \
        kimi-k2.7-code
end
