part of 'HomeWidgetsImports.dart';

class BuildProductItem extends StatelessWidget {
  final ProductModel model;

  const BuildProductItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          AutoRouter.of(context).push(ProductDetailsRoute(model: model)),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: MyColors.greyWhite,
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedImage(
                url: model.image,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: MyText(
                  title: model.title.toString(),
                  color: MyColors.primary,
                  size: 9,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              MyText(
                title: "Price : \$ ${model.price}",
                color: MyColors.black,
                size: 8,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )),
    );
  }
}
