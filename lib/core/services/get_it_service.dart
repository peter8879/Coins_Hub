import 'package:coins_hub/core/services/dio_service.dart';
import 'package:coins_hub/features/home/data/repos/coins_repo_impl.dart';
import 'package:coins_hub/features/home/domain/repos/coins_repo.dart';
import 'package:get_it/get_it.dart';

import 'data_base_service.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<
    DataBaseService
  >(DioService());
  getIt.registerSingleton<CoinsRepo>(
    CoinsRepoImpl(
      getIt<DataBaseService>(),
    ),
  );
}
