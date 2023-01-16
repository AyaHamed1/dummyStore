part of 'ProductDetailsImports.dart';

class ProductDetailsData {
  // provider
  final TotalProvider totalProvider = TotalProvider();

  // methods
  addToCart(BuildContext context, ProductModel model) async {
    List<ProductModel> cartItems = context.read<CartProvider>().products;
    cartItems.add(model);
    context.read<CartProvider>().updateCart(cartItems);
    Fluttertoast.showToast(msg: "Added to cart successfully");
  }
}
