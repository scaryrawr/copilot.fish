# copilot.fish has moved

Fish and Zsh integrations for GitHub Copilot CLI are now maintained together
in [scaryrawr/copilot-completions](https://github.com/scaryrawr/copilot-completions).

Existing installations from this repository remain usable, but they will not
receive future completion updates. Migrate to the combined repository with:

```fish
fisher remove scaryrawr/copilot.fish
fisher install scaryrawr/copilot-completions
```

New Fish installations should use:

```fish
fisher install scaryrawr/copilot-completions
```
