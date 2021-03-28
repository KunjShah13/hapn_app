import 'package:flutter/material.dart';
import 'package:hapn_app/views/sdg_pages/Page1details.dart';
import 'package:hapn_app/views/sdg_pages/Page2Details.dart';
import 'package:hapn_app/views/sdg_pages/Page3Details.dart';
import 'package:hapn_app/views/sdg_pages/Page4D.dart';
import 'package:hapn_app/views/sdg_pages/Page5D.dart';
import 'package:hapn_app/views/sdg_pages/Page6D.dart';
import 'package:hapn_app/views/sdg_pages/Page7D.dart';
import 'package:hapn_app/views/sdg_pages/Page8D.dart';
import 'package:hapn_app/views/sdg_pages/Page9D.dart';
import 'package:hapn_app/views/sdg_pages/Page10D.dart';
import 'package:hapn_app/views/sdg_pages/Page11D.dart';
import 'package:hapn_app/views/sdg_pages/Page12D.dart';
import 'package:hapn_app/views/sdg_pages/Page13D.dart';
import 'package:hapn_app/views/sdg_pages/Page14D.dart';
import 'package:hapn_app/views/sdg_pages/Page15D.dart';
import 'package:hapn_app/views/sdg_pages/Page16D.dart';
import 'package:hapn_app/views/sdg_pages/Page17D.dart';

class Sdg extends StatefulWidget {
  @override
  _SdgState createState() => _SdgState();
}

class _SdgState extends State<Sdg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "HAPN",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "UP",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-01_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-02_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-03_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-04_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-05_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-06_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-07_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-08_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-09_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-10_480.png'),
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
                  return Page11();
                }));
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'goal-11',
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-11_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-12_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-13_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-14_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-15_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-16_480.png'),
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
                    child: Ink.image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('imag/goal-17_480.png'),
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
