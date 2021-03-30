import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullArticle extends StatelessWidget {
  //final News news;
  //FullArticle({this.news});
  final String imgURL, title, content, author;
  int claps;
  FullArticle(
      {@required this.author,
      @required this.title,
      @required this.content,
      @required this.imgURL,
      @required this.claps});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          Hero(
            tag: "$title",
            child: Image.network(imgURL),
          ),
          Container(
              decoration: BoxDecoration(color: Colors.grey[800]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Wrap(
                             children: 
                              [Text(
                                title ?? "No title",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 1),
                          child: Text(
                            author ?? "No author",
                            style:
                                TextStyle(fontSize: 20, color: Colors.grey[500]),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(Icons.favorite, size: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          claps == null ? "2" : claps.toString(),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.grey[700]),
            child: Wrap(
              spacing: 10,
              children: [
                Chip(
                    label: Text(
                  "No Poverty",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                )),
                Chip(
                    label: Text(
                  "Gender Equality",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              content ?? "No content",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
