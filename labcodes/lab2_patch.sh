#!/bin/bash

index=(3 4 5 6 7 8)

for var in 0 1 2 3 4 5
do
	dest=${index[var]}
	origin="lab${dest}/kern/mm/default_pmm.c"
	update="lab2/kern/mm/default_pmm.c"
	diff -u ${origin} ${update} > "lab2_to_lab${dest}_ex1.diff"
	patch ${origin} "lab2_to_lab${dest}_ex1.diff"
	rm "lab2_to_lab${dest}_ex1.diff"

	origin="lab${dest}/kern/mm/pmm.c"
	update="lab2/kern/mm/pmm.c"
	diff -u ${origin} ${update} > "lab2_to_lab${dest}_ex2_3.diff"
	patch  ${origin} "lab2_to_lab${dest}_ex2_3.diff"
	rm "lab2_to_lab${dest}_ex2_3.diff"
done
