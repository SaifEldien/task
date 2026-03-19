import 'package:task/data/models/product_model.dart';


abstract class IProductRepository {

  Future <List<ProductModel>> getProducts ();

}