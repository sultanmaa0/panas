#!/bin/bash

while true; do
    # Ethereum
    echo "Running Ethereum script..."
    /bin/bash /root/LAVA1/ethereum.sh "https://eth1.lava.build/lava-referer-598b3c64-895d-4935-8348-101f128a456e/"

    # StarkNet
    echo "Running StarkNet script..."
    /bin/bash /root/LAVA1/starknet.sh "https://rpc.starknet.lava.build/lava-referer-598b3c64-895d-4935-8348-101f128a456e/"

    # Axelar
    echo "Running Axelar script..."
    /bin/bash /root/LAVA1/axelar.sh "https://tm.axelar.lava.build/lava-referer-598b3c64-895d-4935-8348-101f128a456e/"

    # NEAR Protocol
    echo "Running NEAR Protocol script..."
    /bin/bash /root/LAVA1/near.sh "https://near.lava.build/lava-referer-598b3c64-895d-4935-8348-101f128a456e/"

    # Wait for 5 minutes before next iteration
    sleep 30  # 300 seconds = 5 minutes
done
