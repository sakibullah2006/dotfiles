#
# ~/.bash_profile
#

# [[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

export PATH="~/development/flutter/bin:$PATH"

export DEV_ENV=~/dev/
export FLUTTER_ENV=~/StudioProjects/
export WEB_ENV=~/dev/web/
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH="/opt/android-sdk/tools/bin/:$PATH"
export PATH="/opt/android-sdk/cmdline-tools/latest/bin/:$PATH"

# chromium using CHROME_EXECUTABLE
export CHROME_EXECUTABLE=$(which chromium)

# ALIAS
# alias android-studio="/home/sakib/development/android-studio/bin/studio.sh"
alias toclip='tmux showb | xclip -i -selection clipboard'
alias pyact='source .venv/bin/activate'
alias swayconf='cd ~/.config/sway/ && nvim'
alias nvconf="cd ~/.config/nvim/ && nvim"
alias tm="tmux"
alias sshon='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/diu@github && ssh-add ~/.ssh/github'

# alias: navigate shortcus
alias fl="cd $FLUTTER_ENV/"
alias webdev="cd $WEB_ENV/"
alias appdev="cd $FLUTTER_ENV/"

# Aliases basics
alias ls='ls --color'
alias v='nvim'
alias c='clear'
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Aliase for docker image
alias rddb="docker run -p 7379:7379 dicedb/dicedb:latest"
alias rdocker="systemctl restart docker.service"

export PATH="/home/sakib/.config/herd-lite/bin:$PATH"
export PATH="/home/sakib/development/flutter/bin/:$PATH"
export PHP_INI_SCAN_DIR="/home/sakib/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/go/bin
source ~/.local/share/blesh/ble.sh
export PATH=$PATH:$HOME/.local/opt/go/bin

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
