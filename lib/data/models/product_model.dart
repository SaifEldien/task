import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.description,
    required super.images,
    required super.categoryName,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      // Ensuring price is a double even if it comes as an int
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      images: List<String>.from(json['images']),
      categoryName: json['category']['name'],
    );
  }
}