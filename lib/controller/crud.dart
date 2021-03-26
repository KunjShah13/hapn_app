import 'package:cloud_firestore/cloud_firestore.dart' show FirebaseFirestore;

class CrudMethods {
  Future<void> addData(articleData) async {
    FirebaseFirestore.instance
        .collection("articles")
        .add(articleData)
        .catchError((e) {
      print(e);
    });
  }

  getData() async {
    return await FirebaseFirestore.instance.collection("articles").snapshots();
  }
}
