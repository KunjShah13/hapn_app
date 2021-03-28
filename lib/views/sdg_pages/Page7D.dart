
import 'package:flutter/material.dart';


class Page7 extends StatelessWidget {


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
                      child: Hero(tag:'goal-7',child: Image.asset(
                        ('imag/goal-07_480.png'),////////////////////////////Image
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
                'Ensure access to affordable, reliable, sustainable, and modern energy for all.',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Countries can accelerate the transition to an affordable, reliable, and sustainable energy system by investing in renewable energy resources, prioritizing energy efficient practices, and adopting clean energy technologies and infrastructure. Businesses can maintain and protect ecosystems and commit to sourcing 100% of operational electricity needs from renewable sources. Employers can reduce the internal demand for transport by prioritizing telecommunications and incentivize less energy intensive modes such as train travel over auto and air travel. Investors can invest more in sustainable energy services, bringing new technologies to the market quickly from a diverse supplier base. You can save electricity by plugging appliances into a power strip and turning them off completely when not in use, including your computer. You can also bike, walk, or take public transport to reduce carbon emissions.',
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