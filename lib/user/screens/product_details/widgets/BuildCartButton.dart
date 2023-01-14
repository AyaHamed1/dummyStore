part of 'ProductDetailsWidgetsImports.dart';

class BuildCartButton extends StatelessWidget {
  final ProductModel model;
  final ProductDetailsData productDetailsData;

  const BuildCartButton(
      {Key? key, required this.model, required this.productDetailsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: MyText(
              title: "\$ ${model.price}",
              color: MyColors.black,
              size: 18,
            ),
          ),
          InkWell(
            onTap: () => productDetailsData.addToCart(context, model),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: MyColors.secondary,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.greyWhite,
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: MyText(
                title: "Add to Cart",
                color: MyColors.blackOpacity,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
