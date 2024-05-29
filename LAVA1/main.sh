#!/bin/bash

while true; do
    # Ethereum
    echo "Running Ethereum script..."
    /bin/bash /root/panas/LAVA1/ethereum.sh "https://eth1.lava.build/lava-referer-716b858a-1626-4ba2-864a-de1d868d0de9/"

    # StarkNet
    echo "Running StarkNet script..."
    /bin/bash /root/panas/LAVA1/starknet.sh "https://rpc.starknet.lava.build/lava-referer-716b858a-1626-4ba2-864a-de1d868d0de9/"

    # Axelar
    echo "Running Axelar script..."
    /bin/bash /root/panas/LAVA1/axelar.sh "https://tm.axelar.lava.build/lava-referer-716b858a-1626-4ba2-864a-de1d868d0de9/"

    # NEAR Protocol
    echo "Running NEAR Protocol script..."
    /bin/bash /root/panas/LAVA1/near.sh "https://near.lava.build/lava-referer-716b858a-1626-4ba2-864a-de1d868d0de9/"

    # Wait for 5 minutes before next iteration
    sleep 20  # 300 seconds = 5 minutes
done
