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

# Intalling oh-my-tmux
git clone https://github.com/gpakosz/.tmux.git "$HOME/.tmux"
ln -s -f "$HOME/.tmux/.tmux.conf" $HOME/.tmux.conf
