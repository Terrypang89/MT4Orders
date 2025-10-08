// MQL4&5-code

#define OnTick MTstart
#define start  MTstart

#ifdef __MQL5__

// Выберите интересуемый MT5-советник
// #include "Lucky.mq5"               // https://www.mql5.com/ru/code/1107
// #include "Puria.mq5"               // https://www.mql5.com/ru/code/138
// #include "Ilan_1_6_Dynamic_HT.mq5" // https://www.mql5.com/ru/code/12220
// #include "Multik.mq5"              // https://www.mql5.com/ru/code/158
// #include "VLT_Trader.mq5"          // https://www.mql5.com/ru/code/1163
// #include "Exp_PFE_Extr.mq5"        // https://www.mql5.com/ru/code/16044

#endif // __MQL5__

#include <MT4Orders.mqh> // если есть #include <Trade/Trade.mqh>, вставить эту строчку ПОСЛЕ

#include <MQL4_to_MQL5.mqh> // ТОЛЬКО для данного примера

// Выберите интересуемый MT4-советник
// #include "Lucky.mq4"          // https://www.mql5.com/ru/code/7464
// #include "E-news-lucky6.mq4"  // https://www.mql5.com/ru/code/7672
// #include "cm_ea_news.mq4"     // https://www.mql5.com/ru/code/10511
// #include "Spreader_v2.mq4"    // https://www.mql5.com/ru/code/14500
#include "Ilan1_4_strict.mq4" // #property strict (MQL5), original - https://www.mql5.com/ru/code/8492

#include "OrdersToString.mqh"

#undef OnTick
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnTick(void)
  {
   ::MTstart();

/*  if (MQLInfoInteger(MQL_VISUAL_MODE))
    Comment("Trade:" + OrdersToString() + "\nHistory:" + OrdersToString(MODE_HISTORY)); // в визуальном режиме тестера можно посмотреть
*/
   return;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double OnTester(void)
  {
   if((!MQLInfoInteger(MQL_OPTIMIZATION)) && (OrdersHistoryTotal()<500)) // тормозной скрипт
     {
      ReportInit();
      ReportStart();
      ReportDeinit();

      Alert("Загляните в \\Files");
     }

   return(AccountEquity());
  }

#define i ii // избегаем часть Warnings

#undef init
#undef start

#define init   ReportInit
#define start  ReportStart
#define deinit ReportDeinit

#include <..\Scripts\Report_strict.mq4> // #property strict (MQL5), original - https://www.mql5.com/ru/code/8126
