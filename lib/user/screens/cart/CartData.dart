part of 'CartImports.dart';

class CartData {
  // bloc
  final GenericBloc<num> totalBloc = GenericBloc(0);

  // methods
  getTotal(BuildContext context) async {
    double total = 0;
    var cartList = context.read<CartCubit>().state.products;
    cartList.forEach((e) {
      total = total + e.price;
    });
    totalBloc.onUpdateData(total);
  }

  void removeFromCart(BuildContext context, ProductModel model){
    // update list
    var cartList = context.read<CartCubit>().state.products;
    cartList.remove(model);
    context.read<CartCubit>().onUpdateCartData(cartList);
    // update total
    getTotal(context);
  }
}
