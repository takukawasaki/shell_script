#!/bin/sh

#-o or演算子　-a and演算子
find . -atime +5 \( -name "*.sh" -o -name "*.tmp" \) -print
