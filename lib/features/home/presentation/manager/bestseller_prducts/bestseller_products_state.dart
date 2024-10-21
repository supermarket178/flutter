part of 'bestseller_products_cubit.dart';

@immutable
sealed class BestsellerProductsState {}

final class BestsellerProductsInitial extends BestsellerProductsState {}
final class BestsellerProductsLoading extends BestsellerProductsState {}
final class BestsellerProductsFailure extends BestsellerProductsState {
  final String message;
  BestsellerProductsFailure(this.message);
}
final class BestsellerProductsSuccess extends BestsellerProductsState {
  final List<ProductModel> products;
  BestsellerProductsSuccess(this.products);
}

