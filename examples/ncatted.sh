
#!/bin/bash

# Modify long_name of variable p2t to 'vamo a ver'
 echo 'Modifying attribute ...'
 ncatted -a long_name,p2t,o,c,'vamo a ver' ../testFiles/surface.nc 
# Overwrites (same as modify) long_name of variable p2t to 'vamo a ver'
 echo 'Overwriting attribute ...'
 ncatted -a long_name,p2t,o,c,'2 metre temperature' ../testFiles/surface.nc 
# Adds attribute mynewattr to variable p2t with text 'yeah'
 echo 'Adding attribute ...'
 ncatted -a mynewattr,p2t,a,c,'yeah' ../testFiles/surface.nc 
# Deletes attribute mynewattr 
 echo 'Deleting attribute ...'
 ncatted -a mynewattr,p2t,d,, ../testFiles/surface.nc 

