#!/bin/sh

/sbin/ifconfig -a                                          | # ifconfigコマンドを実行
grep inet6                                                 | # IPv6アドレスの行を抽出
sed 's/.*[[:blank:]]\([0-9A-Fa-f:]*:[0-9A-Fa-f:]*\).*/\1/' | # IPv6アドレス文字列抽出
grep -v  '^::1$'                                           | # loopback(略記)を除去
grep -v  '^\(0\+:\)\{7\}0*1$'                              | # loopbackを除去
grep -vi '^fd00:'                                          | # private(既に廃止)を除去
grep -vi '^fe80:'                                            # link local除去
