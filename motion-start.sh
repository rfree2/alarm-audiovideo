#!/bin/bash
date=$(date +%Y-%m-%d_%H:%M:%S%z)

echo "guarding-since-$date[$1]" > ~/stat

bash ./lib_sendxmpp.sh "rfree.mobile@jit.si" "starting soon"
sleep 3

./lib_sendxmpp.sh "rfree.mobile@jit.si" "starting...3"
sleep 2
./lib_sendxmpp.sh "rfree.mobile@jit.si" "starting...2"
sleep 2
./lib_sendxmpp.sh "rfree.mobile@jit.si" "starting...1"
sleep 2
bash ./lib_sendxmpp.sh "rfree.mobile@jit.si" "starting...GO"
motion
bash ./lib_sendxmpp.sh "rfree.mobile@jit.si" "end of program"

