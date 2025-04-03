import 'package:coins_hub/features/home/presentation/views/widgets/coins_item.dart';
import 'package:flutter/material.dart';

class CoinsList extends StatelessWidget {
  const CoinsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) => const CoinsItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}
