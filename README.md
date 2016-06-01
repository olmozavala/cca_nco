=========== Install =========
sudo apt-get install nco

$$$$$$$$$$$$$$$ OPERATIONS $$$$$$$$$$$$$$$$$$$$$$$44
=== Append variables ====
ncks in.nc out.nc  -- Copies in into out
== Arithmetic =======
ncbo
ncap2       -- Arithmetically process netCDF files. Uses a file called 'fl.nco' with a list of statements/expressions
    ncap2 -S
== Interpolation =======
ncflint
== Conctenators =======
ncrcat      -- Concatenate record variables
    ncrcat 8?.nc 8589.nc  --Concatenate several years in one file

ncecat      -- Concatenate fixed length variables      
    ncecat 85?.nc 85_ens.nc  --Merge several outputs of 85 into one variable with [record,lat,lon] 

ncpdq       -- Concatenate along any dimension
== Averages =======
ncra
nces
ncwa

$$$$$$$$$$$$$$$ Others $$$$$$$$$$$$$$$$$$$$$$$44
==== Extra options ====
--no_tmp_fl   //Do not write to the temporal file
--create_ram  //Create temporal file in RAM
-D 1   //Show some info about what is being done

===== Install from source ===
-- Download from: 
http://sourceforge.net/projects/nco/

tar -xvf nco...

