#!/bin/bash
#PBS -l walltime=00:01:00
#PBS -l nodes=1

logpath=/mnt/lustre/$(whoami)/Junk/tm20n20
'rm' -f $logpath

qsub -q sciama1.q -o $logpath -j oe run.sh 

echo 'End of the script'