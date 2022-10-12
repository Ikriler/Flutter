import 'package:flutter_sklad/domain/entity/provider_entity.dart';

class Provider extends ProviderEntity {
  late int id;
  String name;
  String address;
  String phoneNumber;

  Provider({required this.name, required this.address, required this.phoneNumber}) : super(name: name, address: address, phoneNumber: phoneNumber);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'phoneNumber': phoneNumber
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json) {
    return Provider(name: json['name'], address: json['address'], phoneNumber: json['phoneNumber']);
  }
}
