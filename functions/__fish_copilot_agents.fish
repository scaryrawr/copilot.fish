function __fish_copilot_agents
    set -l agents_dir ~/.copilot/agents
    
    # Check if agents directory exists
    test -d $agents_dir; or return
    
    # Find all .agent.md files and extract names
    for file in $agents_dir/*.agent.md
        test -f $file; or continue
        
        # Try to extract name from YAML frontmatter
        set -l name (awk 'BEGIN{in_yaml=0} /^---$/{in_yaml=!in_yaml; next} in_yaml && /^name:/{print}' $file | sed 's/^name:[[:space:]]*//;s/^"//;s/"$//')
        
        # If no name in frontmatter, use filename without .agent.md
        if test -z "$name"
            set name (basename $file .agent.md)
        end
        
        echo $name
    end
end
