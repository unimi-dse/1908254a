# Martina Viggiano

This package retrieves exchange rate between Euro and Renminbi from website 'oanda'and plots them into an interactive plotly though Shiny App.

## Installation
```
devtools::install_github('unimi-dse/1908254')
```
## Usage
```
#load the package
require(eurcnh)
```
### Data acquisition (data_acq)
The function 'data_acq' downloads exchange rate 'EUR/CNH' from website 'oanda'.
```
data_acq()
```

### Shiny App
The function ```GUI()``` runs a Graphical User Interface to plot data provided by the function data_acq()
```
GUI()
```
