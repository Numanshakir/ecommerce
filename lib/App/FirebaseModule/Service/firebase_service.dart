import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/App/FirebaseModule/Model/user_model.dart';

mixin FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  saveUserInfo() async {
    var data = {
      "name": "Test User 2",
      "email": "test@gmail.com",
    };

    await _db
        .collection("users")
        .doc(DateTime.now().millisecondsSinceEpoch.toString())
        .set(data);
  }

  deleteUserInfo() async {
    await _db.collection("users").doc("user1").delete();
  }

  updateUserInfo() async {
    var data = {
      "name": "Test User 2",
      "email": "test@gmail.com",
    };

    // await _db.collection("users").doc("user1").update(data);
    // await _db
    //     .collection("users")
    //     .doc("user1")
    //     .set(data, SetOptions(merge: true));
  }

  getUserInfo() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("test").doc("test1").get();
    print(snapshot.data());
  }

  // Future<List<UserModel>> onFetchUsers() async {
  //   List<UserModel> users = [];
  //   try {
  //     QuerySnapshot<Map<String, dynamic>> snapshot = await _db
  //         .collection("users")
  //         // .doc("user2")
  //         // .collection("test")

  //         .where("age", isLessThan: 18)
  //         // .where("age", isEqualTo: 18)
  //         // .where("age", isGreaterThan: 18)
  //         .get();
  //     print("snapshot.docs");

  //     for (int index = 0; index < snapshot.docs.length; index++) {
  //       print(snapshot.docs[index].data());
  //     }

  //     users = UserModel.fromJsonToList(snapshot.docs);
  //   } catch (e) {
  //     print(e);
  //   }
  //   return users;

  //   // _db.collection("users").doc("user2").get();
  // }

  onFetchUsers() async {
    try {
      Stream<QuerySnapshot<Map<String, dynamic>>> snapshot =
          _db.collection("users").snapshots();

      print("snapshot.docs");
      snapshot.listen((event) {
        print("event");
        for (int index = 0; index < event.docChanges.length; index++) {
          print(event.docChanges[index].type);
          print(event.docChanges[index].doc.data());
        }
      });
    } catch (e) {
      print(e);
    }

    // _db.collection("users").doc("user2").get();
  }
}
