#!/bin/bash

# turn on bash's job control
set -m

# Start the primary bitcoind and put it in the background
exec gosu bitcoin bitcoind &

# Start the prometheus bitcoind monitoring script
python3 /scripts/prometheus-bitcoind.py

# the my_helper_process might need to know how to wait on the
# primary process to start before it does its work and returns

# now we bring the primary process back into the foreground
# and leave it there
fg %1
