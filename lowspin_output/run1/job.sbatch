#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=4


/modules/packages/orca/orca_4_2_1_linux_x86-64_shared_openmpi314/orca low.inp>low.out

