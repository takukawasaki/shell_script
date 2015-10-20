#!/bin/sh

find . \( -type d          -a -exec chmod 771 {} \; \) -o \
       \( -name "*.BAK"    -a -exec chmod 600 {} \; \) -o \
       \( -name "*.py"     -a -exec chmod 755 {} \; \) -o \
       \( -name "*.lisp"   -a -exec chmod 755 {} \; \) -o \
       \( -name "*.rb"     -a -exec chmod 755 {} \; \) -o \
       \( -name "*.clj"    -a -exec chmod 755 {} \; \) -o \
       \( -name "*.hs"     -a -exec chmod 755 {} \; \) -o \
       \( -name "*.scm"    -a -exec chmod 755 {} \; \) -o \
       \( -name "*.xtm"    -a -exec chmod 755 {} \; \) -o \
       \( -name "*.rkt"    -a -exec chmod 755 {} \; \) -o \
       \( -name "*.js"     -a -exec chmod 755 {} \; \) -o \
       \( -name "*.sh"     -a -exec chmod 755 {} \; \) -o \
       \( -name "*.coffee" -a -exec chmod 755 {} \; \) -o \
       \( -name "*.pde"    -a -exec chmod 755 {} \; \) -o \
       \( -name "*.html"   -a -exec chmod 755 {} \; \) -o \
       \( -name "*.css"    -a -exec chmod 755 {} \; \) -o \
       \( -name "*.txt"    -a -exec chmod 755 {} \; \)

