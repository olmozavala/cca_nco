#!/bin/bash

# Removing output.nc
echo '********** Removing output files *****************'

rm -f ../testFiles/onlyp2t.nc 
rm -f ../testFiles/output.nc 
rm -f ../testFiles/output2.nc 

# Copying variable 
echo '********** Concatenating files ***'
ncks -v p2t ../testFiles/surface.nc ../testFiles/onlyp2t.nc
ncview ../testFiles/onlyp2t.nc &

echo '********** Copying variable p2t from surface.nc to ouput.nc ... only first 70 values of lon (total 143) and 73'
ncks -d longitude,0,70 -v p2t ../testFiles/surface.nc ../testFiles/output.nc
ncview ../testFiles/output.nc &

echo '********** Copying variable p2t from surface.nc to ouput.nc ... only 246.0 < lon > 302.0 and  0.0 < lat > 70.0' 
ncks -d longitude,246.0,302.0 -d latitude,0.0,70.0 -v p2t ../testFiles/surface.nc ../testFiles/output2.nc
ncview ../testFiles/output2.nc &
