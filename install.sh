#!/bin/bash
ls -d */ | cut -f1 -d'/' | grep -v '^\.git$' | xargs -I {} stow {}
