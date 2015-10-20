#!/bin/sh

case $(uname -s) in
    Darwin)
        ECHO="/bin/echo"
        ;;
    *)
        ECHO="echo"
        ;;
esac

$ECHO -n "not return"
$ECHO "messages"

