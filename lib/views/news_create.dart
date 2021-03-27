import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hapn_app/controller/crud.dart';
import 'package:hapn_app/models/news.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class CreateNews extends StatefulWidget {
  @override
  _CreateNewsState createState() => _CreateNewsState();
}

class _CreateNewsState extends State<CreateNews> {
  final News news = new News();

  File selectedImage;
  bool _isLoading = false;
  CrudMethods crudMethods = new CrudMethods();

  Future getImage() async {
    final _picker = ImagePicker();

    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        selectedImage = File(pickedFile.path);
      } else {
        SnackBar(content: Text('No image selected.'));
      }
    });
  }

  uploadArticle() async {
    if (selectedImage != null) {
      setState(() {
        _isLoading = true;
      });

      ///upload image to firebase storage

      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage
          .ref()
          .child("articleImages")
          .child("${randomAlphaNumeric(9)}.jpg");

      final UploadTask task = ref.putFile(selectedImage);

      this.news.imageURL =
          await (await task.whenComplete(() => null)).ref.getDownloadURL();

      Map<String, String> newsMap = {
        "imgURL": this.news.imageURL,
        "author": this.news.author,
        "title": this.news.title,
        "content": this.news.content
      };

      crudMethods.addData(newsMap).then((result) {
        Navigator.pop(context);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "New ",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "Article",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 3.0,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              uploadArticle();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.file_upload),
            ),
          )
        ],
      ),
      body: _isLoading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: selectedImage != null
                        ? Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6)),
                            child: ClipRRect(
                              child: Image.file(
                                selectedImage,
                                fit: BoxFit.cover,
                              ),
                            ))
                        : Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            height: 170,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6)),
                            width: MediaQuery.of(context).size.width,
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.black45,
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Author Name",
                              border: OutlineInputBorder()),
                          onChanged: (val) {
                            this.news.author = val;
                          },
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Title Name",
                              border: OutlineInputBorder()),
                          onChanged: (val) {
                            this.news.title = val;
                          },
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Whatever"),
                          onChanged: (val) {
                            this.news.content = val;
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
