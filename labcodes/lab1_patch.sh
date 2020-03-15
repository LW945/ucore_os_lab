#!/bin/bash

index=(2 3 4 5 6 7 8)

for var in 0 1 2 3 4 5 6
do
	dest=${index[var]}
	origin="lab${dest}/kern/debug/kdebug.c"
	update="lab1/kern/debug/kdebug.c"
	diff -u ${origin} ${update} > "lab1_to_lab${dest}_ex5.diff"
	patch ${origin} "lab1_to_lab${dest}_ex5.diff"
	rm "lab1_to_lab${dest}_ex5.diff"

	origin="lab${dest}/kern/trap/trap.c"
	update="lab1/kern/trap/trap.c"
	diff -u ${origin} ${update} > "lab1_to_lab${dest}_ex6.diff"
	patch  ${origin} "lab1_to_lab${dest}_ex6.diff"
	rm "lab1_to_lab${dest}_ex6.diff"
done
