part of 'CartWidgetsImports.dart';

class BuildCartTotal extends StatelessWidget {
  const BuildCartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var total = context.watch<TotalProvider>().total;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: MyText(
        title: "Total : \$ $total",
        color: MyColors.black,
        size: 13,
        overflow: TextOverflow.clip,
        alien: TextAlign.center,
      ),
    );
  }
}
