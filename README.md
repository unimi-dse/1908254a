# eurcnh Package

This package retrieves the currency exchange rate from [oanda website](https://www.oanda.com/rw-en/) and runs a Graphical User Interface (Shiny App).

## Installation
```
devtools::install_github('unimi-dse/1908254a')
```
## Usage
```
#load the package
require(eurcnh)
```
### Data acquisition (data_acq)
The function ```data_acq()``` downloads exchange rate 'EUR/CNH' from website 'oanda'.
```
data_acq()
```

### Shiny App
The function ```GUI()``` runs a Graphical User Interface to plot data provided by the function ```data_acq()```
```
GUI()
```
plots them into an interactive plotly though Shiny App.
