import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_review_app/helper/constant.dart';
import 'package:food_review_app/model/user_model.dart';

class DatabaseService {
  static Future<bool> addUser(UserModel userModel) async {
    //use the set() to add new user in order to assign our own uid)
    var result = await FirebaseFirestore.instance
        .collection(DatabaseCollections.users.name)
        .doc(userModel.uid)
        .withConverter<UserModel>(
            fromFirestore: (snapshot, _) =>
                UserModel.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson())
        .set(userModel, SetOptions(merge: true))
        .then((_) => true)
        .onError((error, stackTrace) => false);
    return result;
  }

  static Future<UserModel> getUser(String uid) {
    return FirebaseFirestore.instance
        .collection('${DatabaseCollections.users.name}/$uid')
        .doc(uid)
        .withConverter(
            fromFirestore: (snapshot, _) =>
                UserModel.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson())
        .get()
        .then((documentSnapshot) => documentSnapshot.data()!)
        .onError((error, stackTrace) => Future.error('$error'));
  }

  static Future<bool> updateUser(UserModel userModel) {
    return FirebaseFirestore.instance
        .collection(DatabaseCollections.users.name)
        .doc(userModel.uid)
        .update(userModel.toJson())
        .then((_) => true)
        .onError((error, stackTrace) => false);
  }



}
