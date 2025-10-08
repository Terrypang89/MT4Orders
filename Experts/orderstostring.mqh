// MQL4-code

string OrderToString(void)
  {
   const string Types[]={"buy","sell","buy limit","sell limit","buy stop","sell stop","balance"};
   const int digits=(int)SymbolInfoInteger(OrderSymbol(),SYMBOL_DIGITS);

   return("#" + (string)OrderTicket() + " " +
          (string)OrderOpenTime()+" "+
          ((OrderType()<ArraySize(Types)) ? Types[OrderType()]: "unknown")+" "+
          DoubleToString(OrderLots(),2)+" "+
          OrderSymbol()+" "+
          DoubleToString(OrderOpenPrice(),digits)+" "+
          DoubleToString(OrderStopLoss(),digits)+" "+
          DoubleToString(OrderTakeProfit(),digits)+" "+
          ((OrderCloseTime()>0) ?((string)OrderCloseTime()+" ") : "")+
          DoubleToString(OrderClosePrice(),digits)+" "+
          DoubleToString(OrderCommission(),2)+" "+
          DoubleToString(OrderSwap(),2)+" "+
          DoubleToString(OrderProfit(),2)+" "+
          ((OrderComment()=="") ? "" :(OrderComment()+" "))+
          (string)OrderMagicNumber()+
          (((OrderExpiration()>0) ?(" expiration "+(string)OrderExpiration()): "")));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string OrdersToString(const int Pool=MODE_TRADES)
  {
   const int Total=((Pool==MODE_TRADES) ? OrdersTotal() : OrdersHistoryTotal());

   string Str="";

   for(int i=0; i<Total; i++)
      if(OrderSelect(i,SELECT_BY_POS,Pool))
         Str+="\n"+OrderToString();

   return(Str);
  }
//+------------------------------------------------------------------+
