function __fish_copilot_mcp_servers
    command copilot mcp list --json 2>/dev/null | awk '
        /"mcpServers"[[:space:]]*:[[:space:]]*\{/ {
            in_servers = 1
            depth = 1
            next
        }

        in_servers {
            if (depth == 1 && $0 ~ /^[[:space:]]*"[^"]+"[[:space:]]*:[[:space:]]*\{/) {
                line = $0
                sub(/^[[:space:]]*"/, "", line)
                sub(/"[[:space:]]*:[[:space:]]*\{.*/, "", line)
                print line
            }

            opens = gsub(/\{/, "{")
            closes = gsub(/\}/, "}")
            depth += opens - closes

            if (depth <= 0) {
                exit
            }
        }
    '
end
