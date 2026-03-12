#!/bin/bash -m
make -j$(nproc)
./src/redis-server &
pid=$!
sleep 1
./src/redis-benchmark -q -n 1000
fg %1
