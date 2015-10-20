#!/bin/sh

ping -c 6 realm00.com > host.log &
ping -c 6 yahoo.co.jp > host2.log &
ping -c 6 google.co.jp > host3.log &

wait

cat host1.log host2.log host3.log

