part of 'ProductDetailsImports.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel model;

  const ProductDetails({Key? key, required this.model}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ProductDetailsData productDetailsData = ProductDetailsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: const DefaultAppBar(title: "Product Details"),
      body: Column(
        children: [
          BuildProductImage(url: widget.model.image),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.secondary.withOpacity(0.8),
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ]),
              child: BuildProductInfo(model: widget.model),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BuildCartButton(
        model: widget.model,
        productDetailsData: productDetailsData,
      ),
    );
  }
}
