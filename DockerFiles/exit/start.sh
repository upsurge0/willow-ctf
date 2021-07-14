#!/bin/bash

while : 
do
    su -c "exec socat TCP-LISTEN:2112,reuseaddr,fork EXEC:/exit/run.sh,stderr" - user;
done
