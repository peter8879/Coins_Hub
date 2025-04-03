

class CoinEntity
{
  final String id;
  final String name;
  final String symbol;
  final double currentPriceUsd;
  final double priceChangePercentage7d;
   double? currentPriceEgp;


   CoinEntity({
    required this.id,
    required this.name,
    required this.symbol,
    required this.currentPriceUsd,
    required this.priceChangePercentage7d,
     this.currentPriceEgp,
  });
   void getEgpPrice(double price)
   {
     currentPriceEgp=price*currentPriceUsd;
   }
}