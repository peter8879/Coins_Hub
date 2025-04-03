import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:cryptocoins_icons/cryptocoins_icons.dart';
import 'package:flutter/material.dart';

class CoinsItem extends StatelessWidget {
  const CoinsItem({super.key, required this.coinEntity});
  final CoinEntity coinEntity;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 70,

      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [

            Expanded(
              child: Text(
                '${coinEntity.name}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${coinEntity.symbol}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${coinEntity.currentPriceEgp!.roundToDouble()}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
