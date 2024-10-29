#!/bin/bash

# zshrc
cp .zshrc ~/.zshrc
if [[ $(hostname) == "dev-001" ]]; then
    echo "export PATH=\"/home/robertogeuke/bin:/home/robertogeuke/bin/nvim-linux64/bin:\$PATH\"" >> ~/.zshrc
fi

# tmux
cp .tmux.conf ~/.tmux.conf

# nvim
# TODO: check if ~/.config exists?
cp -r nvim ~/.config/nvim

# specific MacOS dotfiles
if [[ $OSTYPE == 'darwin'* ]]; then
    cp .alacritty.toml  ~/.alacritty.toml
fi

