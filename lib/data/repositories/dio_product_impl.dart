import 'package:dio/dio.dart';
import 'package:task/data/models/product_model.dart';

import '../providers/remote/dio_client.dart';
import 'product_repository.dart';

class DioProductRepository implements IProductRepository {
  final Dio _dio = DioClient().dio;

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await _dio.get('/products');
    return (response.data as List).map((json) => ProductModel.fromJson(json)).toList();
  }

}

