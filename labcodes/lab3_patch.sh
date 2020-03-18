#!/bin/bash

index=(4 5 6 7 8)

for var in 0 1 2 3 4
do
	dest=${index[var]}
#	origin="lab${dest}/kern/mm/pmm.c"
#	update="lab3/kern/mm/pmm.c"
#	diff -u ${origin} ${update} > "lab3_to_lab${dest}.diff"
#	patch ${origin} "lab3_to_lab${dest}.diff"
#	rm "lab3_to_lab${dest}.diff"
#
#	origin="lab${dest}/kern/trap/trap.c"
#	update="lab3/kern/trap/trap.c"
#	diff -u ${origin} ${update} > "lab3_to_lab${dest}.diff"
#	patch  ${origin} "lab3_to_lab${dest}.diff"
#	rm "lab3_to_lab${dest}.diff"
#
#	origin="lab${dest}/kern/mm/vmm.c"
#	update="lab3/kern/mm/vmm.c"
#	diff -u ${origin} ${update} > "lab3_to_lab${dest}.diff"
#	patch ${origin} "lab3_to_lab${dest}.diff"
#	rm "lab3_to_lab${dest}.diff"
#
	origin="lab${dest}/kern/mm/swap_fifo.c"
	update="lab3/kern/mm/swap_fifo.c"
	diff -u ${origin} ${update} > "lab3_to_lab${dest}.diff"
	patch  ${origin} "lab3_to_lab${dest}.diff"
	rm "lab3_to_lab${dest}.diff"
done
