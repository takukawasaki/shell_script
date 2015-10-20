#!/bin/sh

filename=""
echo $(sed -n "s/<code>\(.*\)<\/code>/\1/p" ~/Desktop/command.html) #commmand evalなどにかえるecho

