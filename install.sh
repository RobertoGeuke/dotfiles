#!/bin/bash

FILTER="${1-all}"

# zshrc
if [[ $FILTER == 'all' ]] || [[ $FILTER == 'zshrc' ]]; then
    cp .p10k.zsh ~/.p10k.zsh
    cp .zshrc ~/.zshrc

    # powerlevel10k 
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi


# tmux
if [[ $FILTER == 'all' ]] || [[ $FILTER == 'tmux' ]]; then
    rm -rf ~/.config/tmux
    mkdir -p ~/.config
    cp -r tmux ~/.config/tmux
    git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
fi

# nvim
if [[ $FILTER == 'all' ]] || [[ $FILTER == 'nvim' ]]; then
    rm -rf ~/.config/nvim
    mkdir -p ~/.config
    cp -r nvim ~/.config/nvim
fi


# specific MacOS dotfiles
if [[ $OSTYPE == 'darwin'* ]]; then
    # ghostty
    if [[ $FILTER == 'all' ]] || [[ $FILTER == 'ghostty' ]]; then
    	rm -rf ~/.config/ghostty
    	mkdir -p ~/.config
    	cp -r ghostty ~/.config/ghostty
    fi
fi

# Install cli tools when using Ubuntu
if command -v apt &>/dev/null; then
  sudo apt update
  sudo apt install -y zsh tmux ripgrep

  curl -LO https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.tar.gz
  sudo rm -rf /opt/nvim
  sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
  echo -n 'export PATH=/opt/nvim-linux-x86_64/bin:$PATH' >> ~/.zshrc
fi
