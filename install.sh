#!/bin/bash

FILTER="${1-all}"

# zshrc
if [[ $FILTER == 'all' ]] || [[ $FILTER == 'zshrc' ]]; then
    cp .zshrc ~/.zshrc
    if [[ $(hostname) == "dev-001" ]]; then
        echo "export PATH=\"/home/robertogeuke/bin:/home/robertogeuke/bin/nvim-linux64/bin:\$PATH\"" >> ~/.zshrc
    fi
fi


# tmux
if [[ $FILTER == 'all' ]] || [[ $FILTER == 'tmux' ]]; then
    cp .tmux.conf ~/.tmux.conf
fi

# nvim
if [[ $FILTER == 'all' ]] || [[ $FILTER == 'nvim' ]]; then
    rm -rf ~/.config/nvim
    mkdir -p ~/.config
    cp -r nvim ~/.config/nvim
fi


# specific MacOS dotfiles
if [[ $OSTYPE == 'darwin'* ]]; then
    # alacritty
    if [[ $FILTER == 'all' ]] || [[ $FILTER == 'alacritty' ]]; then
        cp .alacritty.toml  ~/.alacritty.toml
    fi
fi

