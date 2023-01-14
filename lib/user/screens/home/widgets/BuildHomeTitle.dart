part of 'HomeWidgetsImports.dart';

class BuildHomeTitle extends StatelessWidget {
  final HomeData homeData;
  const BuildHomeTitle({Key? key, required this.homeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.17,
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
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
            ]
        ),
        child: MyText(
          title: "Your Fashion Destination",
          color: MyColors.grey,
          size: 23,
          overflow: TextOverflow.clip,
          fontFamily: GoogleFonts.tangerine().fontFamily,
        ),
      ),
    );
  }
}
