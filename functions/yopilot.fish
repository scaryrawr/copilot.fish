function yopilot --wraps=copilot --description 'YOLO mode copilot'
    for argument in $argv
        for option in -p --prompt -i --interactive
            if test "$argument" = "$option"; or string match -q -- "$option=*" "$argument"
                command copilot --yolo $argv
                return
            end
        end
    end

    command copilot --experimental -i "/allow-all auto" $argv
end
