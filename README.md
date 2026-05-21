# private-dotfiles

Personal dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Layout

Each top-level directory is a stow package whose contents mirror `$HOME`:

```
.
├── claude/     → ~/.claude/
├── git/        → ~/.gitconfig
├── karabiner/  → ~/.config/karabiner/
├── nvim/       → ~/.config/nvim/
├── warp/       → ~/.warp/
└── yazi/       → ~/.config/yazi/
```

## Prerequisites

```sh
brew install stow
```

Per-package:

- **claude** — `brew install claude-code` (or download from claude.ai/code). No extra deps.
- **nvim** — `brew install neovim ripgrep fd node` plus a [Nerd Font](https://www.nerdfonts.com/). NvChad starter; [lazy.nvim](https://github.com/folke/lazy.nvim) auto-installs plugins on first launch.
- **karabiner** — `brew install --cask karabiner-elements`, then install [MultitouchExtension](https://multi.calftrail.com/).
- **yazi** — `brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide`.
- **warp** — `brew install --cask warp`. No extra deps.
- **git** — no extra deps.

## Install

Clone, then stow what you want:

```sh
git clone <repo-url> ~/private-dotfiles
cd ~/private-dotfiles
stow claude nvim karabiner warp yazi git
```

Or one package at a time: `stow nvim`.

If stow refuses due to existing files, back them up or remove them, then re-run.

## Uninstall

```sh
stow -D <package>
```
