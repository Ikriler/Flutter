import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fstore/models/status.dart';
import 'package:fstore/models/user.dart' as models;
import 'package:fstore/utils/firestore_utils.dart';

class UserUtils {
  static UserUtils get instanse => UserUtils();

  CollectionReference<Map<String, dynamic>> get userCollection =>
      FireStoreUtils.firestoreUtils.collection("users");

  Future<Status> create(String login, String password, String uid) async {
    return userCollection
        .doc(uid)
        .set(models.User(login: login, password: password).toJson())
        .then((value) => Status())
        .catchError((error) => Status(errorMessage: error));
  }

  Stream<List<models.User>> get() {
    return userCollection.snapshots().map((snapshot) => snapshot.docs.map((doc) => models.User.fromJson(doc.data())).toList());
  }

  Future<Status> update(String login, String password, String uid) async {
    return userCollection
        .doc(uid)
        .set(models.User(login: login, password: password).toJson())
        .then((value) => Status())
        .catchError((error) => Status(errorMessage: error));
  }

  Future<Status> delete(String uid) async {
    return userCollection
        .doc(uid)
        .delete()
        .then((value) => Status())
        .catchError((error) => Status(errorMessage: error));
  }
}
