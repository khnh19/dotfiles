# dotfiles

## Installation

Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink the configs:

```bash
for i in */; do stow -t ~ "$i"; done
```
