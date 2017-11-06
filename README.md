# ncl: fig-ice-polar

NCL script for drawing polar diagram with ice concentration in mind.

Can be used as is on the [NOAA OI SST V2 High Resolution Dataset](https://www.esrl.noaa.gov/psd/data/gridded/data.noaa.oisst.v2.highres.html), but other sea ice dataset should be OK too.

## How to use

Download data from NOAA and change the following lines.

````
  ifile = addfile("sample.nc","r")
  ice  = ifile->icec(0,:,:)
````

Zero corresponds to t=1, or the first record so change this accordingly. Running NCL should give the following figure.

![Sample fig](https://github.com/mehori/ncl-fig-ice-polar/blob/master/fig-ice-polar.jpg)
