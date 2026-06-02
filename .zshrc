# terminal colors
export CLICOLOR=1

#default editor
export EDITOR='nvim'

# colored prompt with git
setopt PROMPT_SUBST
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%b)'

# export PS1=$'%n@%m:\e[0;36m%~\e[0m$ '
# PROMPT='ben@Bens-MBP:%F{cyan}%~%f${vcs_info_msg_0_}$ '
PROMPT='%F{green}ben@Bens-MBP:%F{cyan}%~%f${vcs_info_msg_0_}$ '

# node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# zoxide
alias cd=z
eval "$(zoxide init zsh)"

# aliases
alias word="open -a \"Microsoft Word.app\""
alias ppt="open -a \"Microsoft PowerPoint\""
alias skim="/Applications/Skim.app/Contents/MacOS/Skim"
alias note="cp ~/classes/mth-218/template/template.tex"

# pnpm
export PNPM_HOME="/Users/benrussell/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# tmux
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t 0 || tmux new -s 0
# fi

# export PATH="$PATH:[]/bin"

export ANDROID_HOME=/Users/benrussell/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


# bun completions
[ -s "/Users/benrussell/.bun/_bun" ] && source "/Users/benrussell/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
