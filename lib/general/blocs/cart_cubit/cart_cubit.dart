import 'package:bloc/bloc.dart';
import 'package:dummy_store/user/models/product_model.dart';
import 'package:equatable/equatable.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  onUpdateCartData(List<ProductModel> products){
    emit(CartUpdated(products: products, changed: !state.changed));
  }

}
