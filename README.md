# Install NCO 
## Ubuntu
sudo apt-get install nco

## From source ===
-- Download from: 
http://sourceforge.net/projects/nco/

tar -xvf nco...

# OPERATIONS 

## Append variables 
    ncks in.nc out.nc  -- Copies in into out

##  Arithmetic 
ncbo
ncap2       -- Arithmetically process netCDF files. Uses a file called 'fl.nco' with a list of statements/expressions
    ncap2 -S
##   Interpolation 
ncflint

##  Conctenators 
ncrcat      -- Concatenate record variables
    ncrcat 8?.nc 8589.nc  --Concatenate several years in one file

ncecat      -- Concatenate fixed length variables      
    ncecat 85?.nc 85_ens.nc  --Merge several outputs of 85 into one variable with [record,lat,lon] 

ncpdq       -- Concatenate along any dimension
##  Averages 
ncra
nces
ncwa

# Others 
--no_tmp_fl   //Do not write to the temporal file
--create_ram  //Create temporal file in RAM
-D 1   //Show some info about what is being done


