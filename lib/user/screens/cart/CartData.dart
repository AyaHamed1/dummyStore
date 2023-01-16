part of 'CartImports.dart';

class CartData {

  // methods
  getTotal(BuildContext context) async {
    double total = 0;
    var cartList = context.read<CartProvider>().products;
    cartList.forEach((e) {
      total = total + e.price;
    });
    context.read<TotalProvider>().updateTotal(total);
  }

  void removeFromCart(BuildContext context, ProductModel model){
    // update list
    var cartList = context.read<CartProvider>().products;
    cartList.remove(model);
    context.read<CartProvider>().updateCart(cartList);
    // update total
    getTotal(context);
  }

  deleteAll(BuildContext context){
    var cartList = context.read<CartProvider>().products;
    cartList.removeRange(0, cartList.length);
    context.read<CartProvider>().updateCart(cartList);
    // update total
    context.read<TotalProvider>().updateTotal(0);
  }

}
