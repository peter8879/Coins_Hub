import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/coins_item.dart';
import 'package:flutter/material.dart';

class CoinsList extends StatelessWidget {
  const CoinsList({super.key});

  @override
  Widget build(BuildContext context) {
    CoinEntity coinEntity=CoinEntity(id: "asda", name: "asda", symbol: "symbol", currentPriceUsd: 123412, priceChangePercentage7d: 12);
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) =>  CoinsItem(
        coinEntity: coinEntity,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}
