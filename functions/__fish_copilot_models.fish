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
    printf '%s\n' claude-sonnet-4.5 claude-haiku-4.5 claude-opus-4.5 claude-sonnet-4 gemini-3-pro-preview gpt-5.2-codex gpt-5.2 gpt-5.1-codex-max gpt-5.1-codex gpt-5.1 gpt-5 gpt-5.1-codex-mini gpt-5-mini gpt-4.1
end
