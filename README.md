# MT4Orders
This library allows to work with the orders in MQL5 (MT5-hedge) in the same way as in MQL4.

That is, the order language system (OLS) becomes identical to MQL4. At the same time, it is still possible to use the MQL5 order system in parallel. In particular, the standard MQL5 library will continue to fully operate.

It is not necessary to choose between the order systems. Use them in parallel! When translating MQL4 -> MQL5, there is no need to touch the order system at all.

It is sufficient to add a single line at the beginning:

#include <MT4Orders.mqh> // if there is #include <Trade/Trade.mqh>, add this line AFTER that

Similar actions (adding one line) in your MQL5 codes allow to add the MT4 OLS to the MT5 OLS, or completely replace it.

The author had created this feature for himself, therefore, he deliberately had not applied the same idea of "one-line" transfer for timeseries, graphical objects, indicators, etc.

This work covers only the order system.

The task of possibility to create a complete library for allowing the MQL4 code to work in MetaTrader 5 without changes had not been considered.

As an example, multiple MT4/5 Expert Advisors (from the codebase) of different types have been used: scalpers, news trading experts, martingales, multi-currency experts, etc.

Here (parallelism of the MT4 and MT5 OLS) is how they can be used in the MT5 tester (or demo):

reference: https://www.mql5.com/en/code/16006