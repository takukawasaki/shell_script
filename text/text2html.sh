#!/bin/sh

sed -e 's/&/\&amp;/g'     \
    -e 's/</\&lt;/g'      \
    -e 's/>/\&gt;/g'      \
    -e "s/'/\&#39;/g"     \
    -e 's/"/\&quot;/g'    \
    -e 's/$/<br>/g'       \
"$1"

