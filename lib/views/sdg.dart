import 'package:flutter/material.dart';
import 'package:hapn_app/views/my_drawer.dart';
import 'package:hapn_app/views/sdg_pages/Page1Details.dart';
import 'package:hapn_app/views/sdg_pages/Page2Details.dart';
import 'package:hapn_app/views/sdg_pages/Page3Details.dart';
import 'package:hapn_app/views/sdg_pages/Page4Details.dart';
import 'package:hapn_app/views/sdg_pages/Page5Details.dart';
import 'package:hapn_app/views/sdg_pages/Page6Details.dart';
import 'package:hapn_app/views/sdg_pages/Page7Details.dart';
import 'package:hapn_app/views/sdg_pages/Page8Details.dart';
import 'package:hapn_app/views/sdg_pages/Page9Details.dart';
import 'package:hapn_app/views/sdg_pages/Page10Details.dart';
import 'package:hapn_app/views/sdg_pages/Page11Details.dart';
import 'package:hapn_app/views/sdg_pages/Page12Details.dart';
import 'package:hapn_app/views/sdg_pages/Page13Details.dart';
import 'package:hapn_app/views/sdg_pages/Page14Details.dart';
import 'package:hapn_app/views/sdg_pages/Page15Details.dart';
import 'package:hapn_app/views/sdg_pages/Page16Details.dart';
import 'package:hapn_app/views/sdg_pages/Page17Details.dart';

class Sdg extends StatefulWidget {
  @override
  _SdgState createState() => _SdgState();
}

class _SdgState extends State<Sdg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SDGs"),
        backgroundColor: Colors.transparent,
      ),
      drawer: MyDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page1();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-1',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-01_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page2();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-2',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-02_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page3();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-3',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-03_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page4();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-4',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-04_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page5();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-5',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-05_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page6();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-6',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-06_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page7();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-7',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-07_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page8();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-8',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-08_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page9();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-9',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-09_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page10();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                      tag: 'goal-10',
                      child: Material(
                        child: Ink.image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('image/goal-10_480.png'),
                        ),
                      ))
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page11();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-11',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-11_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), //
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page12();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-12',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-12_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page13();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-13',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-13_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page14();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-14',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-14_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page15();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-15',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-15_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page16();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-16',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-16_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page17();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-17',
                    child: Material(
                      child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('image/goal-17_480.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
