import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'UI/products_provider/products_provider.dart';
import 'data/repositories/dio_product_impl.dart';
import 'data/repositories/product_repository.dart';

final sl = GetIt.instance;
final IProductRepository productRepo = DioProductRepository();

Future<void> init() async {
  sl.registerLazySingleton(() => Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  ));
  sl.registerLazySingleton(() => ProductProvider(repository: productRepo));
}