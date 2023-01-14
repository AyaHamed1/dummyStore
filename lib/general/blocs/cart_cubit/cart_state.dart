part of 'cart_cubit.dart';

abstract class CartState extends Equatable {
  final List<ProductModel> products;
  final bool changed;

  const CartState({required this.products, required this.changed});
}

class CartInitial extends CartState {
  CartInitial()
      : super(products: [], changed: false);

  @override
  List<Object> get props => [products, changed];
}

class CartUpdated extends CartState {
  CartUpdated({required List<ProductModel> products, required bool changed})
      : super(products: products, changed: changed);

  @override
  List<Object> get props => [products, changed];
}
