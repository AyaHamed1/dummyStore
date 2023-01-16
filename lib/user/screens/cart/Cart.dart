part of 'CartImports.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  CartData cartData = CartData();

  @override
  void initState() {
    cartData.getTotal(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Cart"),
      body: Consumer<CartProvider>(
        builder: (_, data, child) {
          return Visibility(
            visible: data.products.isNotEmpty,
            replacement: Center(
              child: MyText(
                title: "Your cart is empty ..",
                color: MyColors.primary,
                size: 14,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: InkWell(
                    onTap: () => cartData.deleteAll(context),
                    child: const MyText(
                      title: "Delete All",
                      color: Colors.red,
                      size: 12,
                    ),
                  ),
                ),
                Flexible(
                  child: AnimationLimiter(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      itemCount: data.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                              child: BuildCartItem(
                                model: data.products[index],
                                index: index,
                                cartData: cartData,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BuildCartTotal(),
    );
  }
}
