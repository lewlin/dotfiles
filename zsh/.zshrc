# manually added to use auto-completion in docker
# ref https://docs.docker.com/compose/completion/#install-command-completion
fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit -i


# Add path for openssl, gem, curl
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH" 
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH" 
export PATH="$HOME/.gem/ruby/2.6.0/bin/:$PATH" 
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# Miniconda
#export PATH="$HOME/miniconda/bin:$PATH"
source $HOME/miniconda3/etc/profile.d/conda.sh

export ZSH=~/.oh-my-zsh
#ZSH_THEME="robbyrussell"
export LANG="en_US.UTF-8"  # needed not to break theme
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME='spaceship'

# ZSH_CUSTOM=/path/to/new-custom-folder
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
#  virtualenvwrapper
#  macports
  #pip
  wd
#  autopep8
#  macport
  #taskwarrior
  sudo
  #docker
  zsh-syntax-highlighting
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


## GIT Aliases
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
test -e "${HOME}/.dotfiles/iterm2/.iterm2_shell_integration.zsh" && source "${HOME}/.dotfiles/iterm2/.iterm2_shell_integration.zsh"

# source two google cloud files (for lewtop) 
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

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
#if [[ -e ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
#    source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#else
#    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#fi
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



