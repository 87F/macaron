export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export ZSH="/Users/joshua/.oh-my-zsh"

source $HOME/.aliases
source $HOME/.secret_aliases
source $HOME/.profile

DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

setopt appendhistory share_history hist_ignore_dups hist_ignore_space
setopt extendedglob nomatch notify

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

source /usr/local/opt/asdf/asdf.sh

eval "$(starship init zsh)"

mkcd() { mkdir -p "$1" && cd "$1" }
cdls() { cd "$1" && ls }
