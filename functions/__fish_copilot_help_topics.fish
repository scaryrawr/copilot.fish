function __fish_copilot_help_topics
    set -l topics (command copilot help --help 2>/dev/null | awk '
        /Available topics:/ { in_topics = 1; next }
        in_topics && /^[[:space:]]*$/ { exit }
        in_topics && /^[[:space:]]*[A-Za-z0-9_-]+[[:space:]]+/ {
            line = $0
            sub(/^[[:space:]]*/, "", line)

            topic = line
            sub(/[[:space:]].*/, "", topic)

            desc = line
            sub(/^[^[:space:]]+[[:space:]]+/, "", desc)

            printf "%s\t%s\n", topic, desc
        }
    ')

    if test (count $topics) -gt 0
        printf '%s\n' $topics
        return
    end

    printf '%s\n' \
        'commands\tInteractive Mode Commands' \
        'config\tConfiguration Settings' \
        'environment\tEnvironment Variables' \
        'logging\tLogging' \
        'monitoring\tMonitoring with OpenTelemetry' \
        'permissions\tPermissions' \
        'providers\tCustom Model Providers (BYOK)'
end
