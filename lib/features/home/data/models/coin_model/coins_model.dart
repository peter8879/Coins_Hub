class CoinModel {
  final String id;
  final String symbol;
  final String name;
  final String nameId;
  final String priceUsd;

  CoinModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.nameId,
    required this.priceUsd,
  });

  factory CoinModel.fromJson(Map<String, dynamic> json) {
    return CoinModel(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      nameId: json['nameid'],
      priceUsd: json['price_usd'],
    );
  }
}