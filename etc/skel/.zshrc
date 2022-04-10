autoload -U promptinit; promptinit

# Set up Pure prompt
PURE_CMD_MAX_EXEC_TIME=2
zstyle :prompt:pure:git:stash show yes
prompt pure

# Aliases and History
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=1000

bindkey -v
setopt appendhistory      # append to HISTFILE
setopt autocd             # go to directories without "cd"
setopt extendedglob       # wacky zsh-specific pattern matching
export CLICOLOR="true"

alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias j=jobs
alias md='mkdir -p'
alias rd='rmdir'
alias po='popd'
alias pu='pushd'
alias df="df -hT"
alias grep='grep --color=tty -d skip'
alias less="less -R"

# Set up fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d ."

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# Set up syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
