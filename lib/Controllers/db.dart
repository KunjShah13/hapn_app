import 'package:cloud_firestore/cloud_firestore.dart';

class Db {
  String uid;
  final collectionRef = FirebaseFirestore.instance;

  Db({this.uid});

  Future<void> updateDb(List<String> todos) async{
    return await collectionRef.collection("users").doc(uid).set({'Todos': todos});
  }

  Stream<DocumentSnapshot> get todosDocSnaps {
    return collectionRef.collection("users").doc(uid).snapshots();
  }

  Future<void> append(String newTodo) async{
    DocumentSnapshot currentTodos = await collectionRef.collection("users").doc(uid).get();
    List todos = currentTodos.data()  ['Todos'].map((todo) => todo.toString()).toList();
    todos.add(newTodo);
    await this.updateDb(List<String>.from(todos));
  }

  Future<void> remove(String todo) async{
    DocumentSnapshot currentTodos = await collectionRef.collection("users").doc(uid).get();
    List todos = currentTodos.data()['Todos'].map((todo) => todo.toString()).toList();
    todos.remove(todo);
    await this.updateDb(List<String>.from(todos));
  }

}
