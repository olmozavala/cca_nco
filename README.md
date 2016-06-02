# Install NCO 
## Ubuntu
  ```
  sudo apt-get install nco
  ```

## From source 
 1. Download from: http://sourceforge.net/projects/nco/
 2. Untar
 ```
  tar -xvf nco...
 ```

# OPERATIONS 

## Summary of operations

![Summary](https://github.com/olmozavala/cca_nco/blob/master/Docs/SUMMARY_of_Operators.png)


## Examples

### ncatted (Attribute editor) 

**ncatted** needs at least five arguments, see the following examples.  
*Example 1:* Modify `attr=long_name`,`var=p2t` to `Yeah babe`. (`m=modify`,`c=it is a char`)
```
   ncatted -a long_name,p2t,m,c,'Yeah babe' myfile.nc 
```
*Example 2:* Add `attr=mynewatt` to `var=p2t` with value `Yeah babe`. (`a=append`,`c=it is a char`)
```
   ncatted -a mynewatt,p2t,a,c,'Yeah babe' myfile.nc 
```
*Example 3:* Delete `attr=myatt` from `var=p2t` (`d=delete`)
```
   ncatted -a myatt,p2t,d,, myfile.nc 
```

Options for attribute types are: f,d,l,s,c,b -> `float,double,long,short,char,byte`.

### ncap
  This code will copy the variables into out.cd
  ```
    ncks in.nc out.nc  
  ```

##  Arithmetic 
  Arithmetically process netCDF files. Uses a file called 'fl.nco' with a list of statements/expressions
  ```
  ncbo
  ncap2       
    ncap2 -S
  ```
##   Interpolation 
  ```
  ncflint
  ```

##  Conctenators 
  Concatenate record variables

### ncrcat
  ```
  ncrcat 8?.nc 8589.nc  //Concatenate several years in one file
  ```

### ncecat
  ```
  ncecat                // Concatenate fixed length variables      
  ncecat 85?.nc 85_ens.nc  //Merge several outputs of 85 into one variable with [record,lat,lon] 
  ```

### ncpdq 
  ```
  ncpdq       -- Concatenate along any dimension
  ```
##  Averages 

### ncra
### nces
### ncwa

# Others 
```
--no_tmp_fl   //Do not write to the temporal file
--create_ram  //Create temporal file in RAM
-D 1   //Show some info about what is being done
```
