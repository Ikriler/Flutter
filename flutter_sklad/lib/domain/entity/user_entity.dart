import 'package:flutter_sklad/domain/entity/role_entity.dart';

class UserEntity {
  int? id;
  late String name;
  late String surname;
  late String patronymic;
  late String login;
  late String password;
  late RoleEnum roleId;
  late String phoneNumber;
  late String email;

  UserEntity({required this.name, required this.surname, required this.patronymic, required this.login, required this.password, required this.phoneNumber, required this.email, required this.roleId});
}