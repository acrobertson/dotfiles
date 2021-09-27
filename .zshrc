# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Spaceship theme settings
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_GIT_STATUS_SHOW="false"
SPACESHIP_PROMPT_PREFIXES_SHOW="false"
SPACESHIP_CHAR_SYMBOL="⚰︎ "

#zsh-autosuggestions settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"

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
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm osx vscode wp-cli z zsh-syntax-highlighting zsh-autosuggestions deno cargo rustup direnv alias-tips)

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

# Changed your .gitignore _after_ you have added / committed some files?
# run `gri` to untrack anything in your updated .gitignore
alias gri="git ls-files --ignored --exclude-standard | xargs -0 git rm -r"

# Open all merge conflicts or currently changed files in VS Code
alias fix="git diff --name-only | uniq | xargs code"

# fnm
alias nvmrc="node -v > .nvmrc"

# fzf
alias preview="fzf --preview 'bat --color \"always\" {}'"

# Python init
# echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# Misc. Exports
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:$PATH
export HOMEBREW_BUNDLE_FILE=$HOME/Brewfile

# prevent pasted text from being unreadable
# unset zle_bracketed_paste

# enable Starship prompt
# eval "$(starship init zsh)"

# fnm
export PATH=$HOME/.fnm:$PATH
eval "$(fnm env --use-on-cd)"

# add hook to run `valet use` when entering a Valet-configured directory
autoload -U add-zsh-hook colors
valet-use() {
	local phprc_path="./.valetphprc"

	# check if .valetphprc file exists in this directory
	if [ -f "$phprc_path" ]; then
		# make sure valet is executable
		if valet_loc="$(type -p "valet")" || [[ -z $valet_loc ]]; then
			echo ".valetphprc found. It wants $fg[cyan]$(cat $phprc_path). $fg[white]You're using: $fg[cyan]$(php -r 'echo PHP_VERSION;')"
			if read -q "choice?$fg[white]Want to switch? $fg_bold[white]Press Y/y: $fg_no_bold[white]"; then
				echo
				valet use && composer global update
			else
				echo "\nIf you change your mind, run $fg[cyan]valet use && composer global update$fg[white]."
			fi
		else
			echo "Valet not found. Have you installed it?"
		fi
	fi
}
add-zsh-hook chpwd valet-use
colors
valet-use
