import 'dart:ffi';

class ProductEntity {
  late int id;
  String description;
  Double price;
  String name;
  Bool exists;
  int productCategoryId;
  int stockId;
  int count;
  String vendor;

  ProductEntity({required this.description, required this.price, required this.name, required this.exists, required this.productCategoryId, required this.stockId, required this.count, required this.vendor}); 
}