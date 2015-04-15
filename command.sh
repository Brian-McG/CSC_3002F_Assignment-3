#!/bin/bash
valgrind --tool=massif --pages-as-heap=yes --massif-out-file=massif.out ./test.sh; cat massif.out | grep mem_heap_B | sed -e 's/mem_heap_B=\(.*\)/\1/' | sort -g | tail -n 1
