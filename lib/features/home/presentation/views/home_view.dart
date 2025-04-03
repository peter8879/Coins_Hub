import 'package:coins_hub/core/services/get_it_service.dart';
import 'package:coins_hub/features/home/domain/repos/coins_repo.dart';
import 'package:coins_hub/features/home/presentation/cuibits/coins_cuibit/coins_cubit.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName =
      'Home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => CoinsCubit(coinsRepo: getIt<CoinsRepo>())
            ..getAllCoins(),
      child: Scaffold(
        body: SafeArea(
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
