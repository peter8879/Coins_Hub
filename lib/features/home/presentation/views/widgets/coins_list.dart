import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/coins_item.dart';
import 'package:flutter/material.dart';

class CoinsList
    extends StatelessWidget {
  final List<CoinEntity> coinEntityList;
  const CoinsList({
    super.key,
    required this.coinEntityList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: coinEntityList.length,
      itemBuilder:
          (context, index) => CoinsItem(
            coinEntity: coinEntityList[index],
          ),
      separatorBuilder:
          (context, index) =>
              const SizedBox(
                height: 10,
              ),
    );
  }
}
