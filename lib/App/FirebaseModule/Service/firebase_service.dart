import 'package:cloud_firestore/cloud_firestore.dart';

mixin FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  saveUserInfo() async {
    var data = {
      "name": "Test User 2",
      "email": "test@gmail.com",
    };

    await _db.collection("users").doc(DateTime.now().millisecondsSinceEpoch.toString()).set(data);
  }

  getUserInfo() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("test").doc("test1").get();
    print(snapshot.data());
  }
}
