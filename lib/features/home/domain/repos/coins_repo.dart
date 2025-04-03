import 'package:coins_hub/core/errors/faliure.dart';
import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CoinsRepo{
Future<Either<Failure,List<CoinEntity>>> getAllCoins();
}