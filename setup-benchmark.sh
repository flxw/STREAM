#!/bin/sh

source ./benchmark-configuration.sh

for amount in "${AMOUNTS[@]}"; do
  cgm create   memory limitedrss/limit$amount
  cgm setvalue memory limitedrss/limit$amount memory.limit_in_bytes "$amount"M
done
