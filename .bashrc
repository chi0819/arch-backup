# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

# Terminal shortcut
alias c='clear'
alias sb='source ~/.bashrc'
alias ls='exa -al'
alias v='nvim'
alias wifi='nmtui'
alias perm='sudo auto-cpufreq --force=performance'
alias save='sudo auto-cpufreq --force=powersave'
alias cpu='sudo auto-cpufreq --stats'
alias ud='sudo pacman -Syu'
alias ins='sudo pacman -S'
alias car='cargo run'
alias dp='sudo ~/debtap/debtap'
alias un='sudo pacman -R'
alias audio='~/pulsemixer'
alias on='xdg-open'

# Path shortcut
alias hrc='v ~/dotfiles/hypr/hyprland.conf'
alias bc='v ~/.bashrc'
alias plab='cd ~/lab'
alias linux='cd ~/code/linux/'
alias pc='cd ~/code/c/'
alias pcpp='cd ~/code/cpp/'
alias ppy='cd ~/code/py/'
alias prs='cd ~/code/rs/'
alias sset='cd ~/set/'
alias dot="cd ~/dotfiles"
alias st='cd ~/set/script/'
alias gdsc='cd ~/code/gdsc'
alias res='cd ~/research'

# Scripts shortcut
alias quartus='/home/eric/intelFPGA_lite/22.1std/quartus/bin/quartus'
alias ph='~/set/script/git_push.sh'
alias e='~/set/script/compile_run.sh'
alias t='~/set/script/test.sh'

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
audio --mute
