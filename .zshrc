export EDITOR=vim;
export VISUAL=vim;

#Enable Colors:
autoload -U colors && colors

#Baisc auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#Aliases

#Ls
alias ls="exa --icons --group-directories-first"
alias ll="exa -l --icons --group-directories-first -h"
alias lt="exa -T --icons"
alias la="exa -a -l --icons --group-directories-first -h"

#Ranger
alias rr="ranger"

#Git
alias g="git"
alias ga="git add"
alias gcm="git commit -m"
alias gp="git push"
alias gs="git status"

#Controls
alias wall="nitrogen --set-zoom-fill --random ~/Wallpapers"
alias lower="light -U"
alias incrs="light -A"
alias clr="clear"
alias tasks="./tasks.sh"

alias reactx="npx create-react-app"

#Competitve
alias cc="cd ~/Documents/Competitve/CC/Contests"
alias cf="cd ~/Documents/Competitve/CF/Contests"
alias cses="cd ~/Documents/Competitve/CSES/"
alias practice="cd ~/Documents/Competitve/CF/Practice"
alias txt="touch .zin.txt .zot.txt .zdf.txt .zex.txt .deb.txt"
alias cnt="cd ~/Contest ; vimz"
alias ncnt="brave-browser --new-window https://codeforces.com/contests ; cd ~/Contest ; new ; vimz"
alias vimz="vim -S .cp.vim"
alias new="rm {A..I}.cpp ; touch {A..I}.cpp ; cat ~/.vim/templates/code.cpp >> {A..I}.cpp ;rm .zin.txt .zot.txt .zdf.txt .zex.txt .deb.txt; txt"
alias news="rm {A..I}.cpp ; touch {A..I}.cpp ; cat ~/.vim/templates/code2.cpp >> {A..I}.cpp; rm .inp.txt .out.txt ; touch .inp.txt .out.txt"


#Startup:
#pfetch
./tasks.sh
bindkey -v
bindkey kj vi-cmd-mode
eval "$(starship init zsh)"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
