import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';

class CoinModel {
  final String id;
  final String symbol;
  final String name;
  final String nameid;
  final String priceUsd;
  final String percentChange7d; // New field added

  CoinModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.nameid,
    required this.priceUsd,
    required this.percentChange7d, // Added to constructor
  });

  factory CoinModel.fromJson(Map<String, dynamic> json) {
    return CoinModel(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      nameid: json['nameid'],
      priceUsd: json['price_usd'],
      percentChange7d: json['percent_change_7d'], // JSON mapping added
    );
  }
  CoinEntity toEntity()
  {
    CoinEntity coinEntity=CoinEntity(id: id, name: name, symbol: symbol, currentPriceUsd: double.parse(priceUsd), priceChangePercentage7d: double.parse(percentChange7d));
    return coinEntity;
  }
}