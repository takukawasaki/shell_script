#!/bin/bash

tmpfile="calctmp.$$"
: > "$tmpfile"

trap 'rm -f "$tmpfile"' EXIT

./calcA.sh >> "$tmpfile"
./calcB.sh >> "$tmpfile"

awk '{sum += $1} END{print sum}' "tmpfile"

