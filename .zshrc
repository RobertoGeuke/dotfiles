# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# powerlevel10k theme
if [[ $OSTYPE == 'darwin'* ]]; then
	source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
else
	source ~/powerlevel10k/powerlevel10k.zsh-theme
fi 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# crisp-cli auto completion
# MUST be at the start, auto-add places it at the end...
# begin crisp completion 
. <(crisp --completion)
# end crisp completion

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

# Crisp functions and aliases
# Gerrit 
function gitload() {
	if [[ -z "$1" ]]
	then
		echo 'Should pass git reference'
		return
	elif [[ "$1" == "master" ]]
	then
		echo 'use gitmaster to load master'
		return
	fi

	git fetch origin "$1"
	git reset --hard "$1"
}
alias gitmaster="git remote update && git reset --hard origin/master"
alias gitpush="git push origin HEAD:refs/for/master"

# Devcontainer
alias devcontainerps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Label \"devcontainer.local_folder\"}}"'

