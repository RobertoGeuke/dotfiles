# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# powerlevel10k theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# antigen
if [[ ! -f $HOME/.antigen.zsh ]]; then
    curl -L git.io/antigen > "$HOME/.antigen.zsh"
fi
source $HOME/.antigen.zsh

# zsh: completions
antigen bundle zsh-users/zsh-completions

# zsh: autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# zsh: fish like history search
antigen bundle zsh-users/zsh-history-substring-search
antigen apply
bindkey '^[[A' history-substring-search-up # Arrow up
bindkey '^[[B' history-substring-search-down # Arrow down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# zsh: syntax highlighting (MUST be at the end)
antigen bundle zsh-users/zsh-syntax-highlighting
