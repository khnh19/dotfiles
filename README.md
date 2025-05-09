# dotfiles

Here are my personal configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Migrating to a new system

```bash
git clone https://github.com/khnh19/dotfiles.git ~/dotfiles
cd ~/dotfiles
for i in */; do stow --target="$HOME" "$i"; done
