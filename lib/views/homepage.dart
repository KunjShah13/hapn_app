import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/models/news.dart';
import 'package:hapn_app/views/my_drawer.dart';
import 'package:hapn_app/views/news_create.dart';
import 'package:hapn_app/views/news_tile.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      //Changes by Kunj

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
