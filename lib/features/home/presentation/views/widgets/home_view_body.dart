import 'package:coins_hub/features/home/presentation/cuibits/coins_cuibit/coins_cubit.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/coins_list.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody
    extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      CoinsCubit,
      CoinsState
    >(
      builder: (context, state) {
        return Center(
          child: Padding(
            padding:
                const EdgeInsets.all(
                  16.0,
                ),
            child: Column(
              children: [
                const HomeAppBar(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 18
                        ),
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Symbol",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Price (EGP)",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: CoinsList(
                    coinEntityList:
                        BlocProvider.of<
                          CoinsCubit
                        >(
                          context,
                        ).coinsList,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
