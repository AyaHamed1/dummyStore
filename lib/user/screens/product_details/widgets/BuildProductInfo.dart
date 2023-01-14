part of 'ProductDetailsWidgetsImports.dart';

class BuildProductInfo extends StatelessWidget {
  final ProductModel model;

  const BuildProductInfo({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: MyText(
                title: model.title,
                color: MyColors.black,
                size: 12,
              ),
            ),
            const SizedBox(width: 20),
            RatingBar.builder(
              initialRating: model.rating.rate,
              direction: Axis.horizontal,
              allowHalfRating: true,
              updateOnDrag: false,
              itemCount: 5,
              itemSize: 15,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              ignoreGestures: true,
              onRatingUpdate: (index) {},
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MyText(
                title: model.category,
                color: MyColors.grey,
                size: 11,
              ),
            ),
            MyText(
              title: "${model.rating.count} Reviews",
              color: MyColors.grey,
              size: 11,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: MyText(
            title: "Description",
            color: MyColors.black,
            size: 12,
          ),
        ),
        MyText(
          title: model.description,
          color: MyColors.blackOpacity,
          size: 11,
        ),
      ],
    );
  }
}
