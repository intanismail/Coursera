Motor Trend Car Road Tests Analysis
========================================================
author: Intan Ismail
date: October 21, 2015

Overview
========================================================

- The data is based on Motor Trend Car Road Tests dataset that comprises fuel 
consumption and ten aspects of automobile design performance for 32 automobiles 
(1973-74 models).

- In this analysis, we will look at the distribution of the fuel consumption 
based on transmission types, number of cylinders and number of gears for 
each model.

- Based on these factors, a distribution of gas mileages is plotted and a list 
of automobile models is displayed as a result.

- Sample code and plot are shown in the next two slides.

List of manual transmission by gear
========================================================
<h6>

```r
data(mtcars)
mtcars$am <- factor(mtcars$am,
   levels=c(0,1),
   labels=c("Automatic",
            "Manual")) 
mtcars$gear <- factor(mtcars$gear,
   levels=c(3,4,5),
   labels=c("3gears",
            "4gears",
            "5gears")) 
manual <- mtcars[mtcars$am == "Manual",]
manual[,"gear", drop=FALSE]
```

***
<h6>

```
                 gear
Mazda RX4      4gears
Mazda RX4 Wag  4gears
Datsun 710     4gears
Fiat 128       4gears
Honda Civic    4gears
Toyota Corolla 4gears
Fiat X1-9      4gears
Porsche 914-2  5gears
Lotus Europa   5gears
Ford Pantera L 5gears
Ferrari Dino   5gears
Maserati Bora  5gears
Volvo 142E     4gears
```

Plot of manual transmission by gear
========================================================
<h6>
![plot of chunk unnamed-chunk-3](slides-figure/unnamed-chunk-3-1.png) 

***
<h6>

```
                 gear
Mazda RX4      4gears
Mazda RX4 Wag  4gears
Datsun 710     4gears
Fiat 128       4gears
Honda Civic    4gears
Toyota Corolla 4gears
Fiat X1-9      4gears
Volvo 142E     4gears
```

```
                 gear
Porsche 914-2  5gears
Lotus Europa   5gears
Ford Pantera L 5gears
Ferrari Dino   5gears
Maserati Bora  5gears
```

Conclusions
========================================================
- For automatic transmission
 - A model with eight cylinders shows the widest distribution of fuel 
   consumption. 
 - A model with three gears and fours gears show about the same distribution of 
   the fuel consumption.
- For manual transmission
 - A model with four cylinders shows the widest distribution of the fuel 
   consumption. 
 - A model with four gears and five gears show about the same distribution of 
   the fuel consumption.
