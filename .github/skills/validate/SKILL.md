---
name: validate
description: Run fish syntax and completion validation for this repository.
license: MIT
compatibility: Requires copilot CLI and fish shell
---

# Validate copilot.fish changes

## When to use

- After modifying `completions/copilot.fish`
- After modifying files in `functions/`
- Before opening or updating a pull request

## Instructions

1. Run syntax checks:
   ```fish
   fish -n completions/copilot.fish
   fish -n functions/*.fish
   ```

2. Run targeted completion checks:
   ```fish
   complete -C"copilot --mo"
   complete -C"copilot --agent "
   complete -C"copilot plugin marketplace "
   ```

3. Verify wrapper function loading:
   ```fish
   source functions/yopilot.fish && functions -q yopilot
   ```

4. If a check fails, apply minimal fixes and rerun all checks.
