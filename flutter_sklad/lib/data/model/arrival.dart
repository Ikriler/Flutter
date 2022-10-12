import 'package:flutter_sklad/domain/entity/arrival_entity.dart';

class Arrival extends ArrivalEntity {
  late int id;
  DateTime date;
  int count;
  int providerId;
  int productId;

  Arrival({required this.date, required this.count, required this.providerId, required this.productId}) : super(date: date, count: count, providerId: providerId, productId: productId);

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'count': count,
      'providerId': providerId,
      'productId': productId
    };
  }

  factory Arrival.toFromMap(Map<String, dynamic> json) {
    return Arrival(date: json['date'], count: json['count'], providerId: json['providerId'], productId: json['productId']);
  }
}
