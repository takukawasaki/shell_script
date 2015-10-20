#!/bin/sh

url="http://www.realm00.com/"
data="index.html"



curl -sO "${url}${data}" && md5sum "$data"
