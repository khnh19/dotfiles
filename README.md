# dotfiles

This is a collection of my personal dotfiles and configuration files for my system, managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Migrate to a new system

```bash
for d in */; do stow -t ~ $d; done
```
