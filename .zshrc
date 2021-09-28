# $HOME/.zshrc

#  ┏━┓┓━┓┳ ┳┳━┓┏━┓
#  ┏━┛┗━┓┃━┫┃┳┛┃
# o┗━┛━━┛┛ ┻┛┗┛┗━┛
#
# GitHub:       https://github.com/xcession/dotfiles
# Maintainer:   Пэйнт (Tharawut Paripaiboon)

# PATH variables {{{

export PATH="$HOME/.local/bin:$PATH"

# Android {{{

# Android SDK
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/bin"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

# }}}

# Homebrew {{{

# Homebrew bin (Intel)
export PATH="/usr/local/bin:$PATH"
# Homebrew bin (Apple)
# export PATH="/opt/homebrew/bin:$PATH"
# Homebrew sbin (Intel)
# export PATH="/usr/local/sbin:$PATH"
# Homebrew sbin (Apple)
# export PATH="/opt/homebrew/sbin:$PATH"

# Curl (Intel)
# export PATH="/usr/local/opt/curl/bin:$PATH"
# Curl (Apple)
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# GNU make (Intel)
# export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
# GNU make (Apple)
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# Homebrew Ruby (Intel)
export PATH="/usr/local/opt/ruby/bin:$PATH"
# Homebrew Ruby (Apple)
# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# Ncurses (Intel)
export PATH="/usr/local/opt/ncurses/bin:$PATH"
# Ncurses (Apple)
# export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"

# Python (Intel)
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# Python (Apple)
export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"

# SQLite (Intel)
export PATH="/usr/local/opt/sqlite/bin:$PATH"
# SQLite (Apple)
# export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# }}}

# iOS Simulator
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Rustup
export PATH="$HOME/.cargo/bin:$PATH"

# Yarn
export PATH="$(yarn global bin):$PATH"

# }}}

# Oh My Zsh {{{

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  gitignore
  vi-mode
  zsh-autosuggestions
  zsh-nvm
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# }}}

# User configuration {{{

# Environment language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Homebrew Shell Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# }}}

# Aliases {{{

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias la="ls -A"

alias v="nvim"
alias vim="nvim"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"
alias dotst="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME status"

alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# }}}

# Starship {{{

eval "$(starship init zsh)"

# }}}

# vim:fileencoding=utf-8:ft=conf:foldmethod=marker
