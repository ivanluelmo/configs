# 20250704 - File creation
alias -g updatebrew='brew update && brew upgrade'
alias installnerdfonts="brew search '/font-.*-(nerd-font|nf)/' | awk '{ print $1 }' | xargs brew install --cask" 
alias -s txt=nano
alias -s py=code
alias -s json=code


alias eza='eza -lahB --icons=auto --classify=auto --sort=name --group-directories-first --time-style=long-iso '
alias dir='eza -glahbM --icons=always --hyperlink --show-symlinks --time-style=relative '
alias ltree='eza -RTL=3 '
alias tree='eza -DRTL=4 '
alias cls='clear '

find_man() {
    man $1 | grep -- $2
}
