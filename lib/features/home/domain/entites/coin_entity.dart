

import 'dart:math';

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
  List<double> generateMock7DayData() {
    final change = priceChangePercentage7d;
    final currentPrice = currentPriceEgp;
    final basePrice = currentPrice! / (1 + change / 100); // Calculate price 7 days ago

    return List.generate(7, (index) {
      // Linear interpolation between basePrice and currentPrice
      return basePrice * pow(1 + change / 100, index / 6);
    });
  }
}