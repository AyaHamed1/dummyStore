part of 'HomeImports.dart';

class HomeData {
  // controllers
  final TextEditingController search = TextEditingController();
  final PagingController<int, ProductModel> pagingController =
      PagingController(firstPageKey: 1);

  // variables
  int pageSize = 10;
  List<ProductModel> productList = [];

  // methods

  void fetchPage(int pageIndex, BuildContext context) async {
    // this api does not support pagination and not responding to offset
    // so I'll implement it manually
    bool isLastPage;

    // set start and end to each page
    var start = pageIndex - 1;
    var end = pageIndex * pageSize;

    // load data from api
    List<ProductModel> data = await DataRepository().getProducts();

    if (productList.isEmpty) {
      // divide the list to sublist according to page size
      productList = data.sublist(start, end);
    } else {
      // load next page
      productList = data.sublist(end - pageSize);
    }
    isLastPage = productList.length < pageSize;
    if (pageIndex == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(productList);
    } else {
      final nextPageKey = pageIndex + 1;
      pagingController.appendPage(productList, nextPageKey);
    }
  }

}
