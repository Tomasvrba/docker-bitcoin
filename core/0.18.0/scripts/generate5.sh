#!/bin/bash

bitcoin-cli -regtest -rpcport=18443 -rpcuser=rpcuser -rpcpassword=rpcpass generatetoaddress 5 $(bitcoin-cli -regtest -rpcport=18443 -rpcuser=rpcuser -rpcpassword=rpcpass getnewaddress)
