#!/usr/bin/env bash

# Installing additional packages
sudo apt-get update && export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y install --no-install-recommends \
    build-essential \
    procps \
    curl \
    file \
    git
    tmux \
    fd-find \
    ripgrep \
    tree \
    autojump \
    unzip \
    zip \
    neovim

# Workaround for `fd-find`
ln -s $(which fdfind) ~/.local/bin/fd

# oh-my-tmux
git clone https://github.com/gpakosz/.tmux.git "$HOME/.tmux"
ln -s -f "$HOME/.tmux/.tmux.conf" $HOME/.tmux.conf

# homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# sdkman
curl -s "https://get.sdkman.io?rcupdate=false" | bash
