#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export PATH="~/development/flutter/bin:$PATH"

export DEV_ENV=~/dev/
export FLUTTER_ENV=~/StudioProjects/
export WEB_ENV=~/dev/web/
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin

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

# alias: navigate shortcuts
alias fl="cd $FLUTTER_ENV/"
alias cdweb="cd $WEB_ENV/"

# Aliases basics
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Aliase for docker image
alias rddb="docker run -p 7379:7379 dicedb/dicedb:latest"
alias rdocker="systemctl restart docker.service"
