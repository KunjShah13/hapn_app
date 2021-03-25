import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/models/news.dart';

class FullArticle extends StatelessWidget {
  final News news;

  FullArticle({this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title),
      ),
      body: ListView(
        children: [
          Hero(
            tag: "${this.news.title}",
            child: Image.network("https://picsum.photos/seed/${this.news.title}/400/200"), // Placeholder image
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[800]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        this.news.title ?? "No title",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      child: Text(
                        this.news.author ?? "No author",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[500]
                        ),
                      ),
                    ),
                    SizedBox(height: 8,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.favorite, size: 20),
                      SizedBox(width: 5,),
                      Text(
                        this.news.claps.toString() ?? "0",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              this.news.content ?? "No content",
              style: TextStyle(
                fontSize: 20
              ),
            ),
            )
        ],
      ),
    );
  }
}
