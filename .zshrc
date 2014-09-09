# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
setopt rmstarsilent

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git capistrano)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/marceldomke/.rvm/gems/ruby-2.0.0-p247/bin:/Users/marceldomke/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/marceldomke/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/marceldomke/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/bin/packer"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
alias startagilo='cd ~/Development/vagrant_projects/agiloweb && vagrant up && mkdir -p /Volumes/agiloweb && sudo mount -t nfs -o resvport agiloweb.loc:/home/vagrant/agiloweb /Volumes/agiloweb && vagrant ssh'
alias startagilo2='cd ~/Development/vagrant_projects/agiloweb2 && vagrant up && mkdir -p /Volumes/agiloweb2 && sudo mount -t nfs -o resvport agiloweb2.loc:/home/vagrant/agiloweb2 /Volumes/agiloweb2 && vagrant ssh'
alias startlwt='cd ~/Development/vagrant_projects/lwt && vagrant up && mkdir -p /Volumes/landeswelle && sudo mount -t nfs -o resvport landeswelle.loc:/home/vagrant/landeswelle /Volumes/landeswelle && vagrant ssh'
alias startamv='cd ~/Development/vagrant_projects/amv && vagrant up && mkdir -p /Volumes/amv && sudo mount -t nfs -o resvport amv.loc:/home/vagrant/amv /Volumes/amv && vagrant ssh'

alias stoplwt='umount /Volumes/landeswelle && cd ~/Development/vagrant_projects/lwt && vagrant suspend'
alias stopagiloweb='umount /Volumes/agiloweb && cd ~/Development/vagrant_projects/agiloweb && vagrant suspend'
alias stopagiloweb2='umount /Volumes/agiloweb2 && cd ~/Development/vagrant_projects/agiloweb2 && vagrant suspend'
alias stopamv='umount /Volumes/amv && cd ~/Development/vagrant_projects/amv && vagrant suspend'
