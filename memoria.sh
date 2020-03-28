#!/usr/bin/env bash
TOTAL=$(free | tail -n +2 | head -n 1 | awk '{print $2}')
USED=$(free | tail -n +2 | head -n 1 | awk '{print $3}')
echo $(( ${USED} * 100 / ${TOTAL} ))
