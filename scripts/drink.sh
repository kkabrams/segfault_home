#!/bin/bash
export SHELL=/bin/bash
$(exit $[$RANDOM % 50]) && printf "\x01ACTION sees that it is %s passed the hour and takes a shot of tripwire.\x01\n" "$(date +%M)" > /home/segfault/files/default
#$(exit $[$RANDOM % 50]) && printf "\x01ACTION sees that it is %s passed the hour and shoots a few ccs of heroin.\x01\n" "$(date +%M)" > /home/segfault/files/default
exit 0
