# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

# Terminal shortcut
alias c='clear'
alias sb='source ~/.bashrc'
alias ls='exa -al'
alias pac='sudo pacman -S'
alias v='nvim'
alias wifi='nmtui'
alias perm="sudo auto-cpufreq --force=performance"
alias save="sudo auto-cpufreq --force=powersave"
alias cpu="sudo auto-cpufreq --stats"

# Path shortcut
alias hrc='v ~/dotfiles/hypr/hyprland.conf'
alias linux='cd ~/code/linux/'
alias pc='cd ~/code/c/'
alias pcpp='cd ~/code/cpp/'
alias ppy='cd ~/code/py/'
alias prs='cd ~/code/rs/'
alias sset='cd ~/set/'
alias dot="cd ~/dotfiles"

# Scripts shortcut
alias ph="~/set/script/git_push.sh"
alias e='~/set/script/compile_run.sh'

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap de;echo "Keyboard set back to de."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------

# Qtile
alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 60'
alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 60'

export PATH="/usr/lib/ccache/bin/:$PATH"

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH
# -----------------------------------------------------
echo ""
neofetch
