#!/bin/bash

NUMBER=$1

# -gt is greater than
# -lt is less than
# -ge is greater than or equal to
# -le is less than or equal to
# -ne is not equal to
# -eq is equal to
if [ $NUMBER -gt 20 ]; then
    echo "Number is greater than 20"
elif [ $NUMBER -lt 20 ]; then
    echo "Number is less than 20"
else
    echo "Number is equal to 20"
fi
