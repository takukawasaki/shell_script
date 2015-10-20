#!/bin/sh

find . -type d -print | sed 's@^@/Users/kawasakitaku/Desktop/pp/@' | xargs mkdir
