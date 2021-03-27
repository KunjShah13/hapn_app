import 'package:hapn_app/Controllers/auth.dart';
import 'package:hapn_app/Controllers/db.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final _auth = AuthController();

  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<User>(context);
    print(_user);

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Fire Todo"),
        backgroundColor: Colors.deepOrange,
        actions: [
          TextButton.icon(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            label: Text(
              "Sign Out",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              dynamic result = await _auth.signOut();
              if (result == null) {
                print("Couldn't sign out");
              }
            },
          )
        ],
      ),
      body: StreamBuilder(
        stream: Db(uid: _user.uid).todosDocSnaps,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data['Todos'].length,
              itemBuilder: (context, index) {
                return Card(
                    child: InkWell(
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Mark as done ?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )),
                            TextButton(
                                onPressed: () async {
                                  await Db(uid: _user.uid).remove(
                                      snapshot.data['Todos'][index].toString());
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: Colors.deepOrange, fontSize: 16),
                                )),
                          ],
                        );
                      },
                    );
                    //
                  },
                  child: ListTile(
                    title: Text(snapshot.data['Todos'][index].toString()),
                  ),
                ));
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNewTodo(
                  dbInstance: Db(uid: _user.uid),
                );
              });
        },
      ),
    );
  }
}

class AddNewTodo extends StatefulWidget {
  final dbInstance;

  @override
  _AddNewTodoState createState() => _AddNewTodoState();

  AddNewTodo({this.dbInstance});
}

class _AddNewTodoState extends State<AddNewTodo> {
  String todo = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Form(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(hintText: "Add new Todo"),
              onChanged: (val) {
                setState(() {
                  todo = val;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                if (todo != "") {
                  await widget.dbInstance.append(todo);
                  Navigator.pop(context);
                }
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange),
              ),
              child: Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
