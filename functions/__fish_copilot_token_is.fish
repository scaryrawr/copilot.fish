function __fish_copilot_token_is
    set -l position $argv[1]
    set -l expected $argv[2]
    set -l tokens (commandline -pxc)
    set tokens (string replace -r --filter '^([^-].*)' '$1' -- $tokens)

    test (count $tokens) -ge $position; or return 1
    test "$tokens[$position]" = "$expected"
end
