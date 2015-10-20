#!/bin/sh

find . -name \*.cc -exec grep -n "GetRow(" {} \; -print
