import 'package:coins_hub/core/errors/custom_exeption.dart';
import 'package:coins_hub/core/errors/faliure.dart';
import 'package:coins_hub/core/services/data_base_service.dart';
import 'package:coins_hub/core/utils/back_end_end_points.dart';
import 'package:coins_hub/features/home/data/models/coin_model/coins_model.dart';
import 'package:coins_hub/features/home/domain/entites/coin_entity.dart';
import 'package:coins_hub/features/home/domain/repos/coins_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CoinsRepoImpl implements CoinsRepo
{
  final DataBaseService dataBaseService;
  const CoinsRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, List<CoinEntity>>> getAllCoins() async{
    try{
      var coins = await dataBaseService.getData(path: BackEndEndPoints.getFirst100);
      List<dynamic>dataList=coins;
      List<CoinModel> coinsList =dataList.map((item)=> CoinModel.fromJson(item)).toList();
      List<CoinEntity> result=coinsList.map((coinModel) => coinModel.toEntity()).toList();

      Dio dio = Dio();
    var egp=await dio.get('https://v6.exchangerate-api.com/v6/7c0e92e2aa4765ec75ba00c3/latest/USD');
    String s=egp.data['conversion_rates']['EGP'].toString();

    double egpPrice=double.parse(s);
      for(var item in result)
        {
          item.getEgpPrice(egpPrice);
        }

      return Right(result);

    }
    on CustomException catch (e)
    {
      return Left(ServerFailure( e.message));
    }
    catch (e)
    {
      return Left(ServerFailure(e.toString()));
    }

  }

}