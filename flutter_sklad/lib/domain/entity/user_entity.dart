class UserEntity {
  late int id;
  String name;
  String surname;
  String patronymic;
  String login;
  String password;
  int roleId;
  String phoneNumber;
  String email;

  UserEntity({required this.name, required this.surname, required this.patronymic, required this.login, required this.password, required this.phoneNumber, required this.email, required this.roleId});
}