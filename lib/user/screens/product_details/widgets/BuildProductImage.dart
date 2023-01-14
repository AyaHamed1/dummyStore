part of 'ProductDetailsWidgetsImports.dart';

class BuildProductImage extends StatelessWidget {
  final String url;

  const BuildProductImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      alignment: Alignment.center,
      // color: MyColors.white
      child: CachedImage(
        url: url,
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .5,
      ),
    );
  }
}
