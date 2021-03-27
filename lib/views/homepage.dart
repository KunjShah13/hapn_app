import 'package:hapn_app/auth/firebaseAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:hapn_app/models/news.dart';
import 'package:hapn_app/views/my_drawer.dart';
import 'package:hapn_app/views/news_tile.dart';
import 'package:hapn_app/views/news_create.dart';


class HomePage extends StatefulWidget {
  final User user;

  const HomePage({Key key, this.user}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  FirebaseAuth _auth = FirebaseAuth.instance;

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
      body: NewsArticles(),
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

class NewsArticles extends StatefulWidget {
  @override
  _NewsArticlesState createState() => _NewsArticlesState();
}

class _NewsArticlesState extends State<NewsArticles> {
  final List<News> articles = [
    News(title: "Title 1", author: "Author", claps: 5),
    News(title: "Title 2", author: "Author", claps: 4),
    News(title: "Title 3", author: "Author", claps: 3),
    News(title: "Title 4", author: "Author", claps: 2),
  ]; // Temporary list, actual data from firestore

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
        child: Text(
          "News Articles",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      ...articles.map((article) => NewsTile(news: article)).toList(),
    ]);
  }
}
