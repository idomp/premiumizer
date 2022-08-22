#!/usr/bin/env sh

aria2c --disable-ipv6=true --enable-rpc --rpc-allow-origin-all --rpc-listen-all --rpc-listen-port=6800 --rpc-secret=premiumizer --max-connection-per-server=16 --file-allocation=none --disk-cache=0
