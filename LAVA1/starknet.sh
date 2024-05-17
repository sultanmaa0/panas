#!/bin/bash

RPC_URL="$1"

OUTPUT_DIR="/root/LAVA1/logs"

# Proxy configuration
PROXY_HOST="$2"
PROXY_PORT="$3"
PROXY_USER="$4"
PROXY_PASS="$5"

starknet_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"Sunsun","method":"starknet_blockNumber"}' "$RPC_URL")

if [ $? -eq 0 ]; then
    if [ ! -d "$OUTPUT_DIR" ]; then
        mkdir "$OUTPUT_DIR"
    fi
    
    echo "$starknet_data" >> "$OUTPUT_DIR/starknet.txt"
    
    echo "StarkNet data fetched and saved to $OUTPUT_DIR/starknet.txt."
else
    echo "Failed to fetch StarkNet data."
fi
