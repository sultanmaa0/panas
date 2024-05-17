#!/bin/bash

RPC_URL="$1"

OUTPUT_DIR="/root/LAVA1/logs"

# Proxy configuration
PROXY_HOST="$2"
PROXY_PORT="$3"
PROXY_USER="$4"
PROXY_PASS="$5"

axelar_data=$(curl -s --proxy "socks5://$PROXY_HOST:$PROXY_PORT" -U "$PROXY_USER:$PROXY_PASS" -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"Cipher","method":"status"}' "$RPC_URL")

if [ $? -eq 0 ]; then
    if [ ! -d "$OUTPUT_DIR" ]; then
        mkdir "$OUTPUT_DIR"
    fi
    
    echo "$axelar_data" >> "$OUTPUT_DIR/axelar.txt"
    
    echo "Axelar data fetched and saved to $OUTPUT_DIR/axelar.txt."
else
    echo "Failed to fetch Axelar data."
fi
