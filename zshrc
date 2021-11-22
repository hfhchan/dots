# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="spaceship"

eval "$(starship init zsh)"

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

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf pyenv nvm direnv gpg-agent)

# For linux
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
fi
# For macos
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Add user completions
# Instructions:
# Some tools (eg rustup, poetry) is installed to user.
# Add those completion files to ~/.zfunc
# Then delete ~/.zcompdump* and start new shell to regenerate completion cache
fpath=(~/.zfunc $fpath)

source $ZSH/oh-my-zsh.sh

# export configurations
export EDITOR="lvim"
export PAGER="less"
export CHROME_BIN=/usr/bin/google-chrome-stable
export LESS='-SFXR'

# Aliases
alias vi="lvim"
alias vim="lvim"
alias nvim="lvim"
alias l="exa -alh --icons"
alias xclip="xclip -selection clipboard"
alias tree="exa --tree --icons"
alias s3="aws s3"


if [ -x "$(command -v register-python-argcomplete)" ]; then
  # Set up pipx completion
  autoload -U bashcompinit
  bashcompinit
  eval "$(register-python-argcomplete pipx)"
fi
