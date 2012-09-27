# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export EDITOR=vim
#export EDITOR="$HOME/emacs/runemacsclient"
export PATH="$HOME/bin:$PATH"
unsetopt beep
bindkey -e

fpath=(~/.zsh/functions $fpath)
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:default' list-colors '${LS_COLORS}'
zstyle ':completion:*:processes' command 'ps axuf'
zstyle ':completion:*:processes-names' command 'ps axho command'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#setopt correctall
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
setopt extendedglob


# colorize stderr
#exec 2>>(while read line; do
#  print '\e[91m'${(q)line}'\e[0m' > /dev/tty; print -n $'\0'; done &)

# SSH hosts compl
local _myhosts
_myhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*' hosts $_myhosts

# home/end keys
[[ -z "$terminfo[kdch1]" ]] || bindkey "$terminfo[kdch1]" delete-char
[[ -z "$terminfo[khome]" ]] || bindkey "$terminfo[khome]" beginning-of-line
[[ -z "$terminfo[kend]" ]] || bindkey "$terminfo[kend]" end-of-line

alias ll="ls -lh --color=auto"
alias ls='ls --color=auto'
alias grep='grep --colour=auto'

autoload -U pick-web-browser
alias -s {html,htm}=pick-web-browser
alias -s {avi,mpeg,mpg,mov,m2v,flv}=mplayer
alias -s {odt,doc,sxw,rtf}=openoffice.org


# =============== Erlang ===================
mkerlapp() {
    DIR=`pwd`
    mkdir -p $1 && cd $1
    wget https://github.com/downloads/basho/rebar/rebar && chmod u+x rebar && ./rebar create template=app name=$1
    cd ${DIR}
 }

# ================= Music ===============
alias music-ultra="mplayer http://94.25.53.133:80/ultra-192"
vkrl() {
    ssh legorod@rel.vk.legorod.drimmi.com
}

vkpl() {
    ssh legorod@pre.vk.legorod.drimmi.com
}

vkcl() {
    ssh legorod@cur.vk.legorod.drimmi.com
}

okrl() {
    ssh legorod@rel.ok.legorod.drimmi.com
}

okpl() {
    ssh legorod@pre.ok.legorod.drimmi.com
}

mmrl() {
    ssh legorod@rel.mm.legorod.drimmi.com
}

mmpl() {
    ssh legorod@pre.mm.legorod.drimmi.com
}

fbrl() {
    ssh legorod@rel.fb.legorod.drimmi.com
}

fbpl() {
    ssh legorod@pre.fb.legorod.drimmi.com
}

vkcp() {
    ssh princess@cur.vk.princess.drimmi.com
}

vkpp() {
    ssh princess@pre.vk.princess.drimmi.com
}

vkrp() {
    ssh princess@rel.vk.princess.drimmi.com
}

okrp() {
    ssh princess@rel.ok.princess.drimmi.com
}

mmrp() {
    ssh princess@rel.mm.princess.drimmi.com
}


