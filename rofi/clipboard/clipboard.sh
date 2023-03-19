theme="theme"
dir="$HOME/.config/rofi/clipboard"

index=`gpaste-client --oneline | grep -oP "(?<=: ).*" | rofi -dmenu -i -p  -format i -theme $dir/$theme -kb-custom-1 Ctrl+x $@`
exit_code=$?


if [ $exit_code == 0 ]; then
    gpaste-client select $index --use-index
elif [ $exit_code == 10 ]; then
    gpaste-client delete $index --use-index
fi
