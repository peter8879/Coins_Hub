part of 'coins_cubit.dart';

@immutable
sealed class CoinsState {}

final class CoinsInitial extends CoinsState {}
final class CoinsLoading extends CoinsState {}
final class CoinsSuccess extends CoinsState {
}
final class CoinsFailure extends CoinsState {
  final String failure;
  CoinsFailure(this.failure);
}
