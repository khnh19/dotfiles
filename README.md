# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

On a new machine:

```bash
cd ~
git clone https://github.com/khnh19/dotfiles.git
cd dotfiles
```

Symlink configs:

```bash
stow ghostty
stow zsh
stow git
```

## Remove a config

```bash
stow -D zsh
```