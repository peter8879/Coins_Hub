import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'coins_state.dart';

class CoinsCubit extends Cubit<CoinsState> {
  CoinsCubit() : super(CoinsInitial());
}
