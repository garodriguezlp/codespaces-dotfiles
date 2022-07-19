#!/usr/bin/env bash

# Installing additional packages
sudo apt-get update && export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y install --no-install-recommends \
    tmux \
    fd-find \
    ripgrep \
    tree \
    autojump

# Workaround for `fd-find`
ln -s $(which fdfind) ~/.local/bin/fd
