#------------------------------------------------------------------------------
# command block use to restore usrful command

#set keyboard repeat rate.
#xset -r 250 60
#kbdrate -d 250 -r 60

#export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

#systemctl cat tmp.mount

#gnome 40 restart shell shortcuts bug
#killall -9 gsd-media-keys

#----------------------------------------------------------------------------------------
# tuning zsh
# disable ohmyzsh url auto escaping at misc.zsh
export DISABLE_MAGIC_FUNCTIONS=true

#Increasing the History File Size
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

export VISUAL=nvim
export EDITOR=nvim
#------------------------------------------------------------------------
#Oh my zsh block BEGIN

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin${PATH:+:}${PATH}

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         zsh-autosuggestions
	 zsh-syntax-highlighting
	 fzf
	 #tmux
	)

source $ZSH/oh-my-zsh.sh
# User configuration
#fpath=(/usr/share/zsh/site-functions $fpath)
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#------------------------------------------------------------------------------

# add by syo

#------------------------------------------------------------------------------
# alias block
#for intel power management
alias __performace_mode="sudo cpupower -c all frequency-set -g performance && sudo cpupower set -b 0 && nvidia-settings -a '[gpu:0]/GpuPowerMizerMode=1'"
alias __powersave_mode="sudo cpupower -c all frequency-set -g powersave && sudo cpupower set -b 15   && nvidia-settings -a '[gpu:0]/GpuPowerMizerMode=0'"

#generate a tmpfs at ~/mem
alias genmem="sudo mount -o uid=1000,gid=1000,mode=0700,size=100% -t tmpfs tmpfs ~/mem"

alias gt='gnome-terminal'
alias diff='diff --color'
alias whatsmyip='curl ipinfo.io'
alias c="clear"
alias p="python"
#alias pwdl=' ls| sed "s:^:`pwd`/:"'
alias today="date +%Y_%m_%d"

# proxy settings
alias ssr="export ALL_PROXY=http://127.0.0.1:12333;export all_proxy=http://127.0.0.1:12333;\
  export https_proxy=http://127.0.0.1:12333;export http_proxy=http://127.0.0.1:12333;\
  export HTTPS_PROXY=http://127.0.0.1:12333;export HTTP_PROXY=http://127.0.0.1:12333;"
alias nossr="export ALL_PROXY='';export all_proxy='';\
  export https_proxy='';export http_proxy='';\
  export HTTPS_PROXY='';export HTTP_PROXY='';"

alias sha256="openssl dgst -sha256"
alias sha512="openssl dgst -sha512"
alias sha3-512="openssl dgst -sha3-512"
alias tree="tree -NC"
alias mpvnc="mpv --no-config"
alias m="mpv"
alias wgetb="wget  -U 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0) Gecko/20100101 Firefox/78.0'"
alias wgetnb="wget --no-proxy -U 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0) Gecko/20100101 Firefox/78.0'"
alias qrgen="qrencode -t ANSI256"
alias qrdecode="zbarimg"
alias burp="java -Dfile.encoding=utf-8 -javaagent:$HOME/opt/burpsuite_pro_v2020.5/burp-loader-keygen-2020_4_1.jar -noverify -jar $HOME/opt/burpsuite_pro_v2020.5/burpsuite_pro_v2020.5.jar"
alias h="htop"
alias nv="nvim"
alias v="nv"
alias dud="du ./ -hd1"
alias hexedit="hexedit --color"

#linux
alias open="xdg-open"
alias o="open"
alias turn_monitor_off="xset dpms force off"
alias gpu_reload='sudo rmmod nvidia_uvm && sudo modprobe nvidia_uvm'

alias jop="$HOME/opt/Joplin/Joplin.AppImage"
alias glances='glances --disable-plugin ip --enable-plugin sensors'
alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias tty-flip="echo 3 |sudo tee /sys/class/graphics/fbcon/rotate_all"
alias emacs="emacs -nw"
alias e="emacs"
alias eria="aria2c --all-proxy=http://127.0.0.1:12333 -s32 -x32 -U 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'  -c"
alias eria-nossr="aria2c -s32 -x32 -U 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'  -c"
alias er="eria-nossr"
alias eri="eria"
#alias b='bpytop'
alias b='btop'
#------------------------------------------------------------------------------
# export block

#for manpage color
export PAGER="most"

#enable ccache
export PATH="/usr/lib/ccache/bin${PATH:+:}${PATH}"

export QT_STYLE_OVERRIDE=kvantum-dark

#fzf rg
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_DEFAULT_OPTS='--height 90% --reverse --border'
#export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
# interactive ripgrep
fzgrep() {
  INITIAL_QUERY=""
  RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
  FZF_DEFAULT_COMMAND="$RG_PREFIX '$INITIAL_QUERY'" \
    fzf --bind "change:reload:$RG_PREFIX {q} || true" \
        --ansi --phony --query "$INITIAL_QUERY" \
        --preview 'bat --style=numbers --color=always --line-range :500 `echo {} | cut -f 1 -d ":"` '
}

export CPATH="/usr/include${CPATH:+:}${CPATH}"
export LIBRARY_PATH="$HOME/local/lib${LIBRARY_PATH:+:}${LIBRARY_PATH}"

#PATH
export PATH="$HOME/.local/bin${PATH:+:}${PATH}"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/.luarocks/lib${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
export CPATH="/usr/include/lua5.3/${CPATH:+:}${CPATH}"

#pip
#export PATH="$HOME/.local/bin${PATH:+:}${PATH}"

#cuda
export PATH="$HOME/local/cuda/bin${PATH:+:}${PATH}"
export LD_LIBRARY_PATH="$HOME/local/cuda/lib64${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
export CPATH="$HOME/local/cuda/include${CPATH:+:}${CPATH}"

#nodejs
export PATH="$HOME/local/node/bin/${PATH:+:}${PATH}"
export LD_LIBRARY_PATH="$HOME/local/node/lib/${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
export CPATH="$HOME/local/node/include${CPATH:+:}${CPATH}"

#matlab
export PATH="$HOME/local/Polyspace/R2020b/bin${PATH:+:}${PATH}"

#mathematica
#export PATH="$HOME/opt/Wolfram/Mathematica/12.2/bin${PATH:+:}${PATH}"

#opt local bin
#PATH="$HOME/opt/local/bin/${PATH:+:}${PATH}"
export PATH="$HOME/local/bin${PATH:+:}${PATH}"
export PATH="$HOME/opt/bin/${PATH:+:}${PATH}"
export LD_LIBRARY_PATH="$HOME/local/lib${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="$HOME/local/${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"         
#opencv
export PATH="$HOME/local/opencv/bin${PATH:+:}${PATH}"
export LD_LIBRARY_PATH="$HOME/local/opencv/lib${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
export CPATH="$HOME/local/opencv/include${CPATH:+:}${CPATH}"

#android studio
export PATH="$HOME/opt/android-studio/bin${PATH:+:}${PATH}"

#-------------------------------
#function
#convert text to utf8
_convert_to_utf8() {iconv -f `uchardet $1` -t UTF-8 $1}
#-------------------------------

#------------------------------------------------------------------------------
# optional software settings block, anaconda, powerlevel_9k, etc.
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/anaconda3/bin${PATH:+:}${PATH}"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#------------------------------------------------------------------------------
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#----------------------------------------------------------------------------------
autoload -U compinit
compinit