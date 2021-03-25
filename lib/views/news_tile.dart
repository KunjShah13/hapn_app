import 'package:flutter/material.dart';
import 'package:hapn_app/models/news.dart';
import 'package:hapn_app/views/news_full.dart';

class NewsTile extends StatelessWidget {
  final News news;

  NewsTile({this.news});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO full article
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FullArticle(news: this.news))
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(2, 5, 2, 2),
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.grey[800],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: '${this.news.title}',
                child: Image.network("https://picsum.photos/seed/${this.news.title}/400/200") // Placeholder image
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                      this.news.title,
                      style: TextStyle(
                        fontSize: 24
                      ),
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      child: Text(
                        this.news.author,
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    )
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_outlined, size: 20,),
                      SizedBox(width: 5,),
                      Text(
                          this.news.claps.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[200]
                      ),
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
