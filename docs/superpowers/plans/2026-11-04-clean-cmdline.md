# Clean Command Line Implementation Plan

> **For agentic workers:** Use superpowers:executing-plans to implement this plan. Steps use checkbox syntax for tracking.

**Goal:** Give the command-line float a transparent background and rounded border while retaining native search and completion.

**Architecture:** Configure the existing tiny-cmdline plugin in `lua/w/plugins/cmdline.lua`. Set its dedicated highlight groups so the background remains transparent after colorscheme changes.

**Tech Stack:** Neovim Lua, lazy.nvim, tiny-cmdline.nvim.

**Spec:** Approved design in the conversation: transparent background, rounded border, no title, default responsive sizing, native `/` and `?` search, existing completion.

## Global Constraints

- Keep the existing plugin and `cmdheight=0`.
- Do not replace completion or change default search behavior.

## Review Focus

- Colorscheme changes must not restore an opaque background; test by triggering `ColorScheme`.
- Border must remain visible without an opaque background; inspect its highlight attributes.
- Native search and default sizing must remain unchanged; inspect plugin options.
- Startup must not require an extra setup call or change plugin loading; test the lazy specification.
- Existing highlight foregrounds must remain legible; retain the colorscheme's float border foreground.

### Task 1: Configure the command line

**Files:**
- Modify: `lua/w/plugins/cmdline.lua`

- [ ] Write and run a headless Neovim check that loads the plugin specification, invokes `init`, and asserts a rounded border, transparent command-line and border highlights, preserved native search defaults, and transparent highlights after `ColorScheme`; confirm it fails before implementation.
- [ ] Configure `vim.g.tiny_cmdline.border = "rounded"` before plugin load. Set `TinyCmdlineNormal` and `TinyCmdlineBorder` to transparent backgrounds, retaining a visible colorscheme-derived border foreground, and reapply highlights on `ColorScheme`.
- [ ] Run the headless check again and confirm it passes. Check the git diff for unrelated changes.
