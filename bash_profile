export PS1="\033[32m\u \033[37m@ \033[34m\h \033[37m: \033[33m[\w]\033[37m\n\\$ >>> "
export PS2="\\$ >>> "

PATH="/Applications/Postgres.app/Contents/Versions/11/bin:$PATH"
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
eval "$(rbenv init -)"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export EDITOR=/usr/local/bin/vim
export BLOCKSIZE=1k

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
# This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
# This loads nvm bash_completion

# icu4c
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
# for compilers to find icu4c
# export LDFLAGS="-L/usr/local/opt/icu4c/lib"
# export CPPFLAGS="-I/usr/local/opt/icu4c/include"
# For pkg-config to find icu4c you may need to set:
# export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# MAKE TERMINAL BETTER
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias cl='clear'                             # clear screen with c  
# cd() { builtin cd "$@"; ll; }             # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:Opens any file in MacOS Quicklook Preview

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
  extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.xz)    tar xf $1      ;;
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
      esac
    else
      echo "'$1' is not a valid file"
    fi
  } 
