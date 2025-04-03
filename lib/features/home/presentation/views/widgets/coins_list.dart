import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:coins_hub/features/home/presentation/cuibits/coins_cuibit/coins_cubit.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/coins_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinsList extends StatelessWidget {
  final List<CoinEntity> coinEntityList;

  const CoinsList({
    super.key,
    required this.coinEntityList,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinsCubit, CoinsState>(
      builder: (context, state) {
      if(state is CoinsLoading)
        {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      else if(state is CoinsFailure)
        {
          return  Center(
            child: Text(state.failure),
          );
        }
      else
        {
          return ListView.separated(
            itemCount: coinEntityList.length,
            itemBuilder:
                (context, index) =>
                CoinsItem(
                  coinEntity: coinEntityList[index],
                ),
            separatorBuilder:
                (context, index) =>
            const SizedBox(
              height: 10,
            ),
          );
        }
      },
    );
  }
}
