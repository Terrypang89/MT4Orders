// MQL4&5-code

#include <MT4Orders.mqh> // ���� ���� #include <Trade/Trade.mqh>, �������� ��� ������� �����

#include <MQL4_to_MQL5.mqh> // ������ ��� ������� �������

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

   MessageBox("��������� � MQL5\\Files");

   return;
  }
#endif // __MQL5__

#define OnStart OnStartScript

#include "TradingSystemRating_Script_Ad.mq4" // https://www.mql5.com/ru/code/12040

#include <b-SharingDoW.mqh> // https://www.mql5.com/ru/code/8090
sinput int MAGIC = 0;       // MagicNumber ����������� ������� (b-SharingDoW.mqh)

                            // �� ��������� �������� �� Warnings - ������ ������� � 2006 ����...
#define i ii // �������� ����� Warnings
#include "Report_strict.mq4" // #property strict (MQL5), original - https://www.mql5.com/ru/code/8126
