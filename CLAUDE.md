# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

Personal dotfiles managed with GNU Stow. Not application code — there is nothing to build, lint, or test. Changes are configuration edits that take effect after the relevant tool reloads its config.

## Layout convention

Each top-level directory is a **stow package** whose internal tree mirrors `$HOME`. To find where a file lands when installed, strip the package name:

- `claude/.claude/...` → `~/.claude/...`
- `git/.gitconfig` → `~/.gitconfig`
- `nvim/.config/nvim/...` → `~/.config/nvim/...`
- `karabiner/.config/karabiner/...` → `~/.config/karabiner/...`
- `yazi/.config/yazi/...` → `~/.config/yazi/...`

When adding a new package, preserve this mirror layout so `stow <pkg>` from the repo root produces correct symlinks.

## Common commands

```sh
stow <pkg>      # install: symlink package contents into $HOME
stow -D <pkg>   # uninstall: remove symlinks
stow -R <pkg>   # restow: refresh after restructuring
```

Run from the repo root. Stow refuses to clobber existing real files — back them up or remove before re-running.

## Per-package notes

- **nvim** — NvChad-based config. Entry point is [nvim/.config/nvim/init.lua](nvim/.config/nvim/init.lua); user customization lives in `lua/` (mappings, options, autocmds, chadrc, plugins). Plugin set is managed by lazy.nvim; pinned versions in [nvim/.config/nvim/lazy-lock.json](nvim/.config/nvim/lazy-lock.json) — commit lockfile changes after `:Lazy sync`.
- **karabiner** — Single source of truth is [karabiner/.config/karabiner/karabiner.json](karabiner/.config/karabiner/karabiner.json). Karabiner-Elements writes timestamped snapshots into `automatic_backups/`; that subdirectory is gitignored. Don't commit backup files.
- **claude** — Claude Code global config at `~/.claude/`. Tracks [claude/.claude/settings.json](claude/.claude/settings.json), [claude/.claude/CLAUDE.md](claude/.claude/CLAUDE.md), and custom slash commands under `commands/`. A `.gitignore` inside the package ignores volatile runtime files (cache, history, backups) — only committed config is synced.
- **yazi** — Theme and package configs only ([yazi/.config/yazi/theme.toml](yazi/.config/yazi/theme.toml), [yazi/.config/yazi/package.toml](yazi/.config/yazi/package.toml)).
- **git** — [git/.gitconfig](git/.gitconfig) only. User identity + editor.

## Commit conventions

Commits follow Conventional Commits scoped by package: `chore(nvim):`, `feat(karabiner):`, `chore(yazi):`, etc. Use `chore` for config additions/snapshots, `feat`/`fix` for behavior changes.
