part of 'HomeImports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeData homeData = HomeData();

  @override
  void initState() {
    homeData.pagingController.addPageRequestListener((pageKey) {
      homeData.fetchPage(pageKey, context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: MediaQuery.of(context).size.height * .25),
              const BuildHomeAppBar(),
              BuildHomeSearch(homeData: homeData),
            ],
          ),
          Flexible(
            child: PagedGridView<int, ProductModel>(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              showNewPageProgressIndicatorAsGridChild: false,
              showNewPageErrorIndicatorAsGridChild: false,
              showNoMoreItemsIndicatorAsGridChild: false,
              pagingController: homeData.pagingController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.65,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              builderDelegate: PagedChildBuilderDelegate<ProductModel>(
                noItemsFoundIndicatorBuilder: (context) => Center(
                  child: MyText(
                    title: "No Data Found",
                    size: 16,
                    color: MyColors.primary,
                  ),
                ),
                itemBuilder: (context, item, index) => BuildProductItem(
                  model: item,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
