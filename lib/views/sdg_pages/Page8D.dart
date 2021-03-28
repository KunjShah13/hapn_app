
import 'package:flutter/material.dart';


class Page8 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(

                background: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: double.infinity,
                      child: Hero(tag:'goal-8',child: Image.asset(
                        ('imag/goal-08_480.png'),////////////////////////////Image
                        fit: BoxFit.cover,
                      ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.8),
                          ],
                          begin: Alignment.topCenter,
                          stops: [0.6, 1],
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 45,
                                  decoration:
                                  BoxDecoration(shape: BoxShape.circle),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),

                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                'Promote sustained, inclusive, and sustainable economic growth, full and productive employment, and decent work for all',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Providing youth with the best opportunity to transition to a decent job calls for investing in education and training of the highest possible quality, providing youth with skills that match labour market demands, giving them access to social protection and basic services regardless of their contract type, as well as levelling the playing field. This way all aspiring youth can attain productive employment regardless of their gender, income level, or socio-economic background. Governments can work to build dynamic, sustainable, innovative, and people-centered economies In particular, they may promote youth employment and women’s economic empowerment, as well as decent work for all. Implementing adequate health and safety measures and promoting supportive working environments are fundamental to protecting the safety of workers; especially health workers and those providing essential services.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),







            ],
          ),
        ),
      ),
    );
  }
}