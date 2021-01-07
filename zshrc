
zmodload zsh/zprof
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Other paths
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set theme to load
ZSH_THEME="nanotech"

# SETTINGS ENABLED
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"

# Custom folder
# ZSH_CUSTOM=/path/to/new-custom-folder

# PLUGINS
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="nvim"
alias vsource="source ~/.vim/init.vim"
alias zsource="exec zsh"
alias python='/usr/local/bin/python3'

echo -ne "\e]1;$PWD\a"

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}