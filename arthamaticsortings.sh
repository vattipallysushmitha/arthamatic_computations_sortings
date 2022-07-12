#!/bin/bash -x
echo "enter A value"
 read A
echo "enter B value"
 read B
echo "enter C value"
 read C
echo "three values are" $A $B $C
xyz=$(awk 'BEGIN {print '$A' + '$B' * '$C'}')
echo "a+b*c=" $xyz
abc=$(awk 'BEGIN {print '$A' * '$B' + '$C'}')
echo "a*b+c=" $abc
rst=$(awk 'BEGIN {print '$C' + '$A' / '$B'}')
echo "c+a/b=" $rst
mno=$(awk 'BEGIN {print '$A' % '$B' + '$C'}')
echo "a%b+c=" $rst
declare -A arthamatic
arthamatic[add]=$xyz
arthamatic[multiply]=$abc
arthamatic[divide]=$rst
arthamatic[module]=$mno
echo "results in dictionary are=${arthamatic[@]}"
