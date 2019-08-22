#!/bin/bash

bitcoin-cli -regtest -rpcport=18443 -rpcuser=rpcuser -rpcpassword=rpcpass generatetoaddress 101 $(bitcoin-cli -regtest -rpcport=18443 -rpcuser=rpcuser -rpcpassword=rpcpass getnewaddress)
