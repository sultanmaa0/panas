#!/bin/bash

while true; do
    # Ethereum
    echo "Running Ethereum script..."
    /bin/bash /root/LAVA1/ethereum.sh "https://eth1.lava.build/lava-referer-b95bb9b8-7d6d-49e7-858c-ad34b4b0e016/" "46.20.106.176" "12324" "14aadb908ccf5" "17479aa549"

    # StarkNet
    echo "Running StarkNet script..."
    /bin/bash /root/LAVA1/starknet.sh "https://rpc.starknet.lava.build/lava-referer-b95bb9b8-7d6d-49e7-858c-ad34b4b0e016/" "46.20.106.176" "12324" "14aadb908ccf5" "17479aa549"

    # Axelar
    echo "Running Axelar script..."
    /bin/bash /root/LAVA1/axelar.sh "https://tm.axelar.lava.build/lava-referer-b95bb9b8-7d6d-49e7-858c-ad34b4b0e016/" "46.20.106.176" "12324" "14aadb908ccf5" "17479aa549"

    # NEAR Protocol
    echo "Running NEAR Protocol script..."
    /bin/bash /root/LAVA1/near.sh "https://near.lava.build/lava-referer-b95bb9b8-7d6d-49e7-858c-ad34b4b0e016/" "46.20.106.176" "12324" "14aadb908ccf5" "17479aa549"

    # Wait for 5 minutes before next iteration
    sleep 50  # 300 seconds = 5 minutes
done
