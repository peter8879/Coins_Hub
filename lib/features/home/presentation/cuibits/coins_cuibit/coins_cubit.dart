import 'package:bloc/bloc.dart';
import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:coins_hub/features/home/domain/repos/coins_repo.dart';
import 'package:meta/meta.dart';

part 'coins_state.dart';

class CoinsCubit
    extends Cubit<CoinsState> {
  final CoinsRepo coinsRepo;
  List<CoinEntity> coinsList = [];

  CoinsCubit({required this.coinsRepo})
    : super(CoinsInitial());
  Future<void> getAllCoins() async {
    emit(CoinsLoading());
    var result =
        await coinsRepo.getAllCoins();
    result.fold(
      (failure) => emit(
        CoinsFailure(failure.message),
      ),
      (coins) {
        coinsList = coins;
        emit(CoinsSuccess());
      },
    );
  }
}
