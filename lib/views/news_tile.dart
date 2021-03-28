import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/views/news_full.dart';

class NewsTile extends StatelessWidget {
  String imgURL, title, content, author;
  int claps;
  //final News news;
  //NewsTile({this.news});
  NewsTile(
      {@required this.author,
      @required this.title,
      @required this.content,
      @required this.imgURL,
      @required this.claps});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FullArticle(
                    author: this.author,
                    content: this.content,
                    title: this.title,
                    imgURL: this.imgURL,
                    claps: this.claps)));
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(2, 10, 2, 2),
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: Colors.grey[800],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100].withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                tag: '$title',
                child: Container(
                  height: 300,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        imgURL,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    child: Text(
                      author,
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite_outlined,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        claps.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.grey[200]),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
