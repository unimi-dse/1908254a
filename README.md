# oandacnh Package

This package retrieves the currency exchange rate from [oanda website](https://www.oanda.com/rw-en/) and runs a Graphical User Interface (Shiny App).

## Installation
```
devtools::install_github('unimi-dse/1908254a')
```
## Usage
```
# Load the package
require(oandacnh)
```
### Data acquisition (data_acq)
The function ```data_acq()``` downloads from [oanda website](https://www.oanda.com/rw-en/) the currency exchange rate defined in brackets.
```
# For example the exchange rate between Euro and Chinese Renminbi
data_acq('EUR/CNH')
```

### Shiny App (GUI)
The function ```GUI()``` runs a Graphical User Interface to plot data provided by [oanda website](https://www.oanda.com/rw-en/) into an interactive plot (plotly).
In particular, it's possible to select four different currency exchange rate: 'EUR/CNH' ,  'USD/CNH' , 'GBP/CNH' , 'JPY/CNH'  and  'CHF/CNH' .
```
GUI()
```
