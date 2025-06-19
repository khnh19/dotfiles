#!/bin/bash
for i in */; do stow -t ~ "$i"; done
echo "Done!"
