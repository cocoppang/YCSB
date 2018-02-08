#!/bin/bash

## usage
## bash trace_gen.sh [workload_name] <-- a,b,c ...

bin/ycsb load kvtracer -P workloads/workload$1 -p "kvtracer.tracefile=tracea_load.txt" -p "kvtracer.keymapfile=tracea_keys.txt"
bin/ycsb run kvtracer -P workloads/workload$1 -p "kvtracer.tracefile=tracea_run.txt" -p "kvtracer.keymapfile=tracea_keys.txt"
