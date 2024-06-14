#This script is a hotfix for the ADCIRC bug that malforms the names of the 'neta' and 'nvel' variables
name="harvey"

ncrename -v neta,neta_rm -v nvel,nvel_rm ${name}_compound.63.nc ${name}_compound.63.nc --overwrite
ncrename -v neta,neta_rm -v nvel,nvel_rm ${name}_surge.63.nc ${name}_surge.63.nc --overwrite
ncrename -v neta,neta_rm -v nvel,nvel_rm ${name}_rivers.63.nc ${name}_rivers.63.nc --overwrite
ncks -x -v neta_rm,nvel_rm ${name}_compound.63.nc ${name}_compound.63.nc --overwrite
ncks -x -v neta_rm,nvel_rm ${name}_surge.63.nc ${name}_surge.63.nc --overwrite
ncks -x -v neta_rm,nvel_rm ${name}_rivers.63.nc ${name}_rivers.63.nc --overwrite
