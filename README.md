# dotfiles

## Installation

Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink the configs:

```bash
cd $HOME
git clone https://github.com/khnh19/dotfiles.git
cd dotfiles
for i in */; do stow -t ~ "$i"; done
```
