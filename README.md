# Doftfiles

This repository contains most of my linux system dotfiles.

## Installation

This repo has to be cloned directly into the `~/.config/` directory.
Some files may have to be placed in the home directory directly.
For this purpose the script `scripts/configToRoot.sh` was created which links all necessary files to the home directory of the system.

Cloning into non-empty directory:

```
git init .
git remote add origin repository.git
git fetch

// option 1
git checkout -t origin/main
git reset origin/main

```
