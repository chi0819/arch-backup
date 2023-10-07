option2="Selected area"
option3="Fullscreen (delay 3 sec)"

options="$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -l 4 -width 30 -p "Take Screenshot")

case $choice in
    $option2)
        grim -g "$(slurp)" ~/screenshots/$(date +'%s_grim.png')
        notify-send "Screenshot created" "Mode: Selected area"
    ;;
    $option3)
        sleep 3
        grim ~/screenshots/$(date +'%s_grim.png')
        notify-send "Screenshot created" "Mode: Fullscreen"
    ;;
esac
