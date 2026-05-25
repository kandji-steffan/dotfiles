# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level
directory is a stow "package" whose contents mirror their target path under
`$HOME`.

## Packages

| Package      | Target                          |
| ------------ | ------------------------------- |
| `aerospace`  | `~/.aerospace.toml`             |
| `nvim`       | `~/.config/nvim`                |
| `sketchybar` | `~/.config/sketchybar`          |
| `starship`   | `~/.config/starship.toml`       |
| `tmux`       | `~/.tmux.conf`                  |

## Setup on a new machine

```sh
brew install stow
git clone git@github.com:kandji-steffan/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow aerospace nvim sketchybar starship tmux
```

`stow` creates symlinks from `$HOME` (and `~/.config/`) into this repo, so
edits to a config file flow straight back into git.

## Adding a package

1. Create `~/dotfiles/<name>/` mirroring the live path under `$HOME`
   (e.g. `~/dotfiles/zsh/.zshrc` will symlink to `~/.zshrc`).
2. Move the live file in: `mv ~/.zshrc ~/dotfiles/zsh/.zshrc`.
3. From `~/dotfiles`: `stow <name>`.

## Removing a package

```sh
cd ~/dotfiles && stow -D <name>
```

Stow removes the symlinks; the files stay in the repo.
