#!/bin/bash

TIMESTAMP=$(date)
echo "Current Timestamp is : $TIMESTAMP"

sleep 10

END_TIMESTAMP=$(date +%s)
TOTAL_TIME=$(($END_TIMESTAMP-$START_TIME))
echo "Total time taken is : $TOTAL_TIME"