part of 'ProductDetailsImports.dart';

class ProductDetailsData {
  // methods
  addToCart(BuildContext context, ProductModel model) async {
    List<ProductModel> cartItems = context.read<CartCubit>().state.products;
    cartItems.add(model);
    context.read<CartCubit>().onUpdateCartData(cartItems);
    Fluttertoast.showToast(msg: "Added to cart successfully");
  }
}
