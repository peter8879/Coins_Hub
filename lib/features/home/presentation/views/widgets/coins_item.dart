import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:flutter/material.dart';

class CoinsItem extends StatelessWidget {
  const CoinsItem({super.key, required this.coinEntity});
  final CoinEntity coinEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading:  Text(
          coinEntity.name,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        title:  Text(
            coinEntity.symbol,
            style: TextStyle(fontSize: 20)
        ),
        trailing:  Text(
          "EGP ${coinEntity.currentPriceEgp}",
          style: TextStyle(
              fontSize: 20
              , fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
