#!/bin/bash

get_cpu_freq() {
   CPU_INFO="/proc/cpuinfo"
   CPU_FREQ=$(awk -v idx=$1 '/^processor/{cur_cpu=$3;cpu[cur_cpu]="";}/^cpu MHz/{cpu[cur_cpu]=$4}END{for(c in cpu){if(c == idx){print cpu[c]};}}' $CPU_INFO)

   echo $CPU_FREQ 
}


