part of 'HomeWidgetsImports.dart';

class BuildHomeSearch extends StatelessWidget {
  final HomeData homeData;
  const BuildHomeSearch({Key? key, required this.homeData}) : super(key: key);

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
        child: TextFormField(
          controller: homeData.search,
          decoration: InputDecoration(
            hintText: "Search",
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: MyColors.primary,
            ),
          ),
          onChanged: (v)=> homeData.onSearch(context, v),
        ),
      ),
    );
  }
}
