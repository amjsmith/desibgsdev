#!/bin/bash
cd ${PBS_O_WORKDIR}

mag_lim=${mag}
N_rand=${n_rand}
version=${version}
single=${singlefile}
Nz_path=${Nz_path}
outdir=${outdir}


exec='generate_hdf5_ascii.py'

echo '~~~~~~~~~~~~'
echo $mag_lim $N_rand $single $version
echo $Nz_path
echo $outdir
echo $exec	   
echo '~~~~~~~~~~~~'

# Ensure that we have the needed modules
source /etc/profile.d/modules.sh
module purge
module add apps/python/2.7.8/gcc-4.4.7 libs/hdf5/1.8.17

# Run
python $exec $mag_lim $N_rand $version $single $Nz_path $outdir

