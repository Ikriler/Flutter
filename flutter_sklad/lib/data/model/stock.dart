import 'package:flutter_sklad/domain/entity/stock_entity.dart';

class Stock extends StockEntity {
  late int id;
  final String address;

  Stock({required this.address}) : super(address: address);

  Map<String, dynamic> toMap() {
    return {
      'address': address
    };
  }

  factory Stock.toFromMap(Map<String, dynamic> json) {
    return Stock(address: json['address']);
  }
}