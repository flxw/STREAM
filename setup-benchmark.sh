#!/bin/sh

AMOUNTS=(50 100 150 200 250)

for amount in "${AMOUNTS[@]}"; do
  cgm create   memory limitedrss/limit$amount
  cgm setvalue memory limitedrss/limit$amount memory.limit_in_bytes "$amount"M
done
