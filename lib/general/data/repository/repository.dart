import '../../../user/models/product_model.dart';
import '../api/apis/api_functions.dart';

//This class contains all the repositories

class DataRepository {
  final ApiFunctions apiFunctions = ApiFunctions();

  Future<List<ProductModel>> getProducts({String? url}) =>
      apiFunctions.getProducts(url: url);
}
