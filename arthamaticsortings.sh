#!/bin/bash -x
echo "enter A value"
 read A
echo "enter B value"
 read B
echo "enter C value"
 read C
echo "three values are" $A $B $C
X=$(awk 'BEGIN {print '$A' + '$B' * '$C'}')
echo "X=" $X
