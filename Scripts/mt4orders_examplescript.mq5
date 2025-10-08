// MQL4&5-code

#include <MT4Orders.mqh> // если есть #include <Trade/Trade.mqh>, вставить эту строчку ПОСЛЕ

#include <MQL4_to_MQL5.mqh> // ТОЛЬКО для данного примера

#ifdef __MQL5__
#property script_show_inputs
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart(void)
  {
   ::OnStartScript();  // TradingSystemRating_Script_Ad.mq4

   ::WriteDealsInfo(); // b-SharingDoW.mqh

                       // Report_strict.mq4
   ::init();
   ::start();
   ::deinit();

   MessageBox("Загляните в MQL5\\Files");

   return;
  }
#endif // __MQL5__

#define OnStart OnStartScript

#include "TradingSystemRating_Script_Ad.mq4" // https://www.mql5.com/ru/code/12040

#include <b-SharingDoW.mqh> // https://www.mql5.com/ru/code/8090
sinput int MAGIC = 0;       // MagicNumber оцениваемых ордеров (b-SharingDoW.mqh)

                            // Не обращайте внимание на Warnings - скрипт написан в 2006 году...
#define i ii // избегаем часть Warnings
#include "Report_strict.mq4" // #property strict (MQL5), original - https://www.mql5.com/ru/code/8126
