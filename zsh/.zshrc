#bindkey  "^[[H"   beginning-of-line
#bindkey  "^[[F"   end-of-line
# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored _approximate menu select
#zstyle :compinstall filename '/home/josh/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
setopt autocd
setopt globdots

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -Uz promptinit
promptinit

# PROMPT='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]\[\033[01;34m\] \w\[\033[00m\]\[\033[00m\]\[\033[01;33m\] ✗ \[\033[00m\]'
# PROMPT='
PROMPT='%F{10}%B%n@%M%f %F{12}%B%~%f %F{11}%B✗ %f%b'

setopt COMPLETE_ALIASES

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
export PYTHONSTARTUP=~/.pythonrc
export PATH="/usr/lib/ccache/bin/:$PATH"
export USE_CCACHE=1
export JACK_SERVER_VM_ARGUMENTS="-Xmx6g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"
export ANDROID_JACK_VM_ARGS=${JACK_SERVER_VM_ARGUMENTS}
export EDITOR=nano
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct

autoload -Uz add-zsh-hook

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn '\e]2;%n@%m %1~\a'
}

function xterm_title_preexec () {
    print -Pn '\e]2;'
    print -n "${(q)1}\a"
}

if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi



autoload zkbd
[[ ! -f ${ZDOTDIR:-$HOME}/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE} ]] && zkbd
source ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}

[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char


man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
