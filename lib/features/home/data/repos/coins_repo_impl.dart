import 'package:coins_hub/core/errors/faliure.dart';
import 'package:coins_hub/core/services/data_base_service.dart';
import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:coins_hub/features/home/domain/repos/coins_repo.dart';
import 'package:dartz/dartz.dart';

class CoinsRepoImpl implements CoinsRepo
{
  final DataBaseService dataBaseService;
  const CoinsRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, List<CoinEntity>>> getAllCoins() {
    // TODO: implement getAllCoins
    throw UnimplementedError();
  }

}