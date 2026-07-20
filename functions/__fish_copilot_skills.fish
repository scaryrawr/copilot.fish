function __fish_copilot_skills
    command copilot skill list --json 2>/dev/null | awk '
        /^[[:space:]]*"name"[[:space:]]*:[[:space:]]*"/ {
            line = $0
            sub(/^[[:space:]]*"name"[[:space:]]*:[[:space:]]*"/, "", line)
            sub(/",?[[:space:]]*$/, "", line)
            print line
        }
    '
end
