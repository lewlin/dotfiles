# manually added to use auto-completion in docker
# ref https://docs.docker.com/compose/completion/#install-command-completion
fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit -i

# added by Anaconda3 5.0.1 installer
# export PATH="$HOME/anaconda3/bin:$PATH"  # commented out by conda initialize

# MacPorts Installer addition on 2018-02-05_at_13:57:47: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Add path for openssl, gem, curl
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH" 

# By forcing /usr/local/bin before /usr/bin, homebrew > macOS 
export PATH="/usr/local/bin:$PATH"

# To use ruby from homebrew
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Miniconda
#export PATH="$HOME/miniconda/bin:$PATH"
source $HOME/miniconda3/etc/profile.d/conda.sh

#export LDFLAGS="-L/usr/local/opt/ruby/lib"
#export CPPFLAGS="-I/usr/local/opt/ruby/include"
# To use libxmls2 from hb
export PATH="/usr/local/opt/libxml2/bin:$PATH" 

# To use gem executables
export PATH="$HOME/.gem/ruby/2.6.0/bin/:$PATH" 
#
#
#For compilers to find libxml2 you may need to set:
#  export LDFLAGS="-L/usr/local/opt/libxml2/lib"
#  export CPPFLAGS="-I/usr/local/opt/libxml2/include"

# Add my python lib to sys.path for using `import` 
#export PYTHONPATH="$PYTHONPATH:$HOME/git/tlib"
#export PYTHONPATH="$HOME/git/tlib"

# Path to your oh-my-zsh installation.
#export ZSH=/Users/tommasobiancalani/.oh-my-zsh
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
export LANG="en_US.UTF-8"  # needed not to break theme
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME='spaceship'

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
#  virtualenvwrapper
#  macports
  pip
  wd
#  autopep8
#  macport
  taskwarrior
  sudo
  zsh-syntax-highlighting
  docker
  z
  #anaconda
  #  iterm2
)

source $ZSH/oh-my-zsh.sh

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### GIT Aliases
#alias commit="git commit -a --allow-empty-message -m ''"
function commit() {
    git add -A
    git commit -a --allow-empty-message -m "$1"
}
alias push="git push"
alias pull="git pull"
alias lab='jupyter-lab'
###

## Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv anaconda)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(host)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
#POWERLEVEL9K_DISABLE_RPROMPT=true
# Config. shown path (dir)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right


# Load tokens 
source ~/.tokens

# load shell integration for iterm2 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# source two google cloud files (for lewtop) 
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/tbiancal/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/tbiancal/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/tbiancal/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/tbiancal/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<
# 
# 
# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/tommasobiancalani/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/tommasobiancalani/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/tommasobiancalani/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/tommasobiancalani/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

# This should be the last line
if [[ -e ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



