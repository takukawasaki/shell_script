#!/bin/sh

/bin/echo -n "Type Your Answer [y/n]: "

tty_state=$(stty -g)
stty raw

char=$(dd bs=1 count=1 2> /dev/null)
stty "$tty_state"

echo

case "$char" in
    [yY])
        echo "Input: Yes"
        ;;
    [nN])
        echo "Input: No"
        ;;
    *)
        echo "Input: What?"
        ;;
esac
