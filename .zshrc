# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/adrs/.oh-my-zsh"


ZSH_THEME="robbyrussell"
# Set spacship prompt

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_USER_SHOW=always
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_DIR_TRUNC=0


#---------------------------------------------------------------
#------------------- PLUGINS ----------------------------------

plugins=(
    archlinux
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

#---------------------------------------------------------------
#------------------- VIM MODE ----------------------------------

#Enable vi mode

bindkey -v
export KEYTIMEOUT=20

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -M viins 'ii' vi-cmd-mode

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, di{ etc..
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

#---------------------------------------------------------------
#------------------- ALIAS ----------------------------------

alias ohmyzsh="nvim ~/.oh-my-zsh"
alias cl="clear; pwd; ls"
alias d:="cd /run/media/adrs/'Nuevo vol'"
alias e:="cd /run/media/adrs/Segundo"
alias clr="clear"
alias webdev="cd /run/media/adrs/'Nuevo vol'/webDevelopment"
alias pz="cd /run/media/adrs/'Nuevo vol'/Documentos/platzi"
alias lv="nvim -c':e#<1'"
alias v="nvim"
alias vrc="nvim ~/.config/nvim/init.vim"
alias zrc="nvim ~/.zshrc"
alias brc="nvim ~/.bashrc"
alias x=exit
alias cli="xclip"
alias pcli="xclip -out"
alias cpwd="pwd | tr -d '\n' | xclip && echo 'pwd copied to clipboard'"
alias open="xdg-open"
alias gdf='/usr/bin/git --git-dir=/home/adrs/dotfilesManjaro --work-tree=/home/adrs'
alias tree='ls-tree -r master --name-only'
alias hol='cd "/run/media/adrs/Nuevo vol/Documentos/Holberton/"'
alias rng='ranger'
alias py='python3'
alias ipy='ipython3'

#---------------------------------------------------------------
#------------------- FUNCTIONS ----------------------------------

c(){
  folder="compilers/"
  if [[ ! -d $folder   ]]; then
    mkdir $folder
  fi
  entry=$(echo "$1" | sed 's/\(\w\)\(\.c\)/\1/g')
    cc -o $entry $1
  mv $entry $folder
  ./$folder/$entry
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ctrlz() {
  if [[ $#BUFFER == 0 ]]; then
    fg >/dev/null 2>&1 && zle redisplay
  else
    zle push-input
  fi
}
zle -N ctrlz
bindkey '^Z' ctrlz

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Use ranger to switch directories and bind it to ctrl-p
rngcd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        # [ --datadir "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^p' 'rngcd\n'

#---------------------------------------------------------------
#-------------------  BINDKEYS AND EXPORTS ----------------------------------

bindkey -M menuselect '^M' .accept-line
bindkey '^ ' autosuggest-accept

LS_COLORS=$LS_COLORS:'tw=01;35:ow=01;35:' ; export LS_COLORS

export EDITOR='nvim'
export VISUAL='nvim'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
