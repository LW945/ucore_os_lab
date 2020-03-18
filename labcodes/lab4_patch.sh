#!/bin/bash

index=(5 6 7 8)

for var in 0 1 2 3
do
	dest=${index[var]}
	origin="lab${dest}/kern/mm/pmm.c"
	update="lab4/kern/mm/pmm.c"
	diff -u ${origin} ${update} > "lab4_to_lab${dest}.diff"
	patch ${origin} "lab4_to_lab${dest}.diff"
	rm "lab4_to_lab${dest}.diff"

	origin="lab${dest}/kern/mm/vmm.c"
	update="lab4/kern/mm/vmm.c"
	diff -u ${origin} ${update} > "lab4_to_lab${dest}.diff"
	patch  ${origin} "lab4_to_lab${dest}.diff"
	rm "lab4_to_lab${dest}.diff"

	origin="lab${dest}/kern/process/proc.c"
	update="lab4/kern/process/proc.c"
	diff -u ${origin} ${update} > "lab4_to_lab${dest}.diff"
	patch ${origin} "lab4_to_lab${dest}.diff"
	rm "lab4_to_lab${dest}.diff"

	origin="lab${dest}/kern/mm/swap_fifo.c"
	update="lab4/kern/mm/swap_fifo.c"
	diff -u ${origin} ${update} > "lab4_to_lab${dest}.diff"
	patch  ${origin} "lab4_to_lab${dest}.diff"
	rm "lab4_to_lab${dest}.diff"
done
