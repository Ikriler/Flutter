
import 'package:dartz/dartz.dart';
import 'package:flutter_sklad/domain/repositories/auth_repository.dart';
import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/entity/role_entity.dart';

class AuthRepositoryImplementation implements AuthRepository {
  final _db = DataBaseHelper.instance.dataBase;

  String table = DataBaseRequest.tableUsers;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var user = await _db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );

      if (user.isEmpty) {
        return Left('Такого пользователя нет');
      }

      if (user.first['password'] != password) {
        return Left('Пароль пользователя неверный');
      }

      return Right(RoleEnum.values[(user.first['id_role'] as int) - 1]);
    } on DatabaseException catch (error) {
      return Left(error.result.toString());
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}