import 'package:flutter_sklad/domain/entity/user_entity.dart';

import '../../domain/entity/role_entity.dart';

class User extends UserEntity {
  int? id;
  String? name;
  String? surname;
  String? patronymic;
  late String login;
  late String password;
  RoleEnum? roleId;
  String? phoneNumber;
  String? email;


  User({this.name, this.surname,  this.patronymic, required this.login, required this.password,  this.phoneNumber,  this.email, required this.roleId}) : super(name: name, surname: surname, patronymic: patronymic, login: login, password: password, roleId: roleId, phoneNumber: phoneNumber, email: email);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'login': login,
      'password': password,
      'roleId': roleId,
      'phoneNumber': phoneNumber,
      'email': email
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(name: json['name'], 
    surname: json['surname'], 
    patronymic: json['patronymic'], 
    login: json['login'], 
    password: json['password'], 
    roleId: RoleEnum.values.firstWhere(
        (element) => element.id == (json['roleId'] as int),
      ), 
    phoneNumber: json['phoneNumber'], 
    email: json['email']);
  }

}