import 'package:flutter_sklad/domain/entity/role_entity.dart';

class UserEntity {
  int? id;
  String? name;
  String? surname;
  String? patronymic;
  late String login;
  late String password;
  RoleEnum? roleId;
  String? phoneNumber;
  String? email;

  UserEntity({ this.name,  this.surname,  this.patronymic, required this.login, required this.password,  this.phoneNumber,  this.email, required this.roleId});
}