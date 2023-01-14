part of 'CartWidgetsImports.dart';

class BuildCartItem extends StatelessWidget {
  final ProductModel model;
  final int index;
  final CartData cartData;
  const BuildCartItem({Key? key, required this.model, required this.index, required this.cartData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
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
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (v)=> cartData.removeFromCart(context, model) ,
              backgroundColor: Colors.red,
              foregroundColor: MyColors.white,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              spacing: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CachedImage(url: model.image, height: 100, width: 80),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        title: model.title,
                        color: MyColors.black,
                        size: 10,
                        overflow: TextOverflow.clip,
                      ),
                      MyText(
                        title: model.category,
                        color: MyColors.grey,
                        size: 9,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
              child: MyText(
                title: "Price \$ ${model.price}",
                color: MyColors.black,
                size: 12,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
