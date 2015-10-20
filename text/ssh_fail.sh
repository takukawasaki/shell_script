#!/bin/sh

securelog="/var/log/secure"

pattern="^.*sshd\[.*\].*Failed pssword for.* from \(.*\) port .*"

sed -n "s/$pattern/\1/p" "$securelog" | sort | uniq -c | sort -nr

