
import 'package:flutter/material.dart';


class Page5 extends StatelessWidget {


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
                      child: Hero(tag:'goal-5',child: Image.asset(
                        ('imag/goal-05_480.png'),////////////////////////////Image
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
                'Achieve gender equality and empower all women and girls.',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'If you are a girl, you can stay in school, help empower your female classmates to do the same, and fight for your right to access sexual and reproductive health services. If you are a woman, you can address unconscious biases and implicit associations that form an unintended and often an invisible barrier to equal opportunity. If you are a man or a boy, you can work alongside women and girls to achieve gender equality and embrace healthy, respectful relationships. You can fund education campaigns to curb cultural practices like female genital mutilation and change harmful laws that limit the rights of women and girls and prevent them from achieving their full potential.',
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