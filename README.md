# oandacnh Package

This package retrieves the currency exchange rate from [oanda](https://www.oanda.com/rw-en/)  website and runs a Graphical User Interface (Shiny App).

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
The function ```data_acq()``` downloads from [oanda](https://www.oanda.com/rw-en/) website the currency exchange rate defined in brackets.
The list of the currency ISO codes can be found [here](https://www1.oanda.com/currency/help/currency-iso-code); the codes have to be separate by ```/```.
```
# For example the exchange rate between Euro and Chinese Renminbi
data_acq('EUR/CNH')
```

### Shiny App (GUI)
The function ```GUI()``` runs a Graphical User Interface to plot data provided by [oanda](https://www.oanda.com/rw-en/) website into an interactive plot (plotly).
In particular, it's possible to select five different currency exchange rate: 'CNH/EUR' ,  'CNH/USD' , 'CNH/GBP' , 'CNH/JPY'  and  'CNH/CHF' .
```
GUI()
```
