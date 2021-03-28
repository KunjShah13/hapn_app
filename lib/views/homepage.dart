import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/views/my_drawer.dart';
import 'package:hapn_app/views/news_tile.dart';
import 'package:hapn_app/views/news_create.dart';
import 'package:hapn_app/controllers/crud.dart';

class HomePage extends StatefulWidget {
  final User user;

  const HomePage({Key key, this.user}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  //final News news = new News();

  CrudMethods crudMethods = new CrudMethods();

  Stream articleStream =
      FirebaseFirestore.instance.collection('articles').snapshots();

  Widget newsArticles() {
    return ListView(children: [
      articleStream != null
          ? Column(
              children: <Widget>[
                StreamBuilder(
                  stream: articleStream,
                  builder: (context, snapshot) {
                    if (snapshot.data == null)
                      return CircularProgressIndicator();
                    else
                      return Column(children: [
                        Padding(padding: EdgeInsets.all(20)),
                        Text(
                          "News Articles",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 15)),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            itemCount: snapshot.data.docs.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return NewsTile(
                                author:
                                    snapshot.data.docs[index].data()['author'],
                                title:
                                    snapshot.data.docs[index].data()['title'],
                                content:
                                    snapshot.data.docs[index].data()['content'],
                                imgURL:
                                    snapshot.data.docs[index].data()['imgURL'],
                                claps:
                                    snapshot.data.docs[index].data()['claps'],
                              );
                            })
                      ]);
                  },
                )
              ],
            )
          : Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
    ]);
  }

  @override
  void initState() {
    crudMethods.getData().then((result) {
      setState(() {
        articleStream = result;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(TextSpan(
            text: "HAP",
            style: TextStyle(fontSize: 22),
            children: [
              TextSpan(
                  text: "N", style: TextStyle(fontSize: 22, color: Colors.blue))
            ])),
        backgroundColor: Colors.transparent,
        elevation: 3.0,
      ),
      drawer: MyDrawer(),
      body: newsArticles(),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateNews()));
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
