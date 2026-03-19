import 'package:flutter/material.dart';
import 'package:task/data/models/product_model.dart';
import 'package:task/data/repositories/product_repository.dart';

class ProductProvider with ChangeNotifier {
  final IProductRepository _repository;
  ProductProvider({required IProductRepository repository}) : _repository = repository;

  final List<ProductModel> _products = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<ProductModel> get products => _products;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  Future<void> fetchProducts() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      final response = await _repository.getProducts();
      _products.clear();
      _products.addAll(response);
    } catch (e) {
      _errorMessage = "Failed to load products: $e";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}