// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nice/screens/pages/food/food.dart';
import 'package:nice/screens/pages/food/food1.dart';
import 'package:nice/screens/pages/food/food2.dart';
import 'package:nice/screens/pages/food/food3.dart';
import 'package:nice/screens/pages/food/meal/meal.dart';
import 'package:nice/screens/pages/food/meal/meal1.dart';
import 'package:nice/screens/pages/food/meal/meal2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.black, Color.fromARGB(181, 0, 0, 0)],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/joloof.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Ire',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              ),
                              Icon(
                                Icons.person_pin,
                                color: Colors.purple,
                                size: 60,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.purple),
                            borderRadius: BorderRadius.circular(14)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Recipe',
                            prefixIcon: Icon(Icons.search_off),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'Today\'s Recomendations',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    SingleChildScrollView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Food(),
                          Food1(),
                          Food2(),
                          Food3(),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'Top Meal',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.fastfood_sharp,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Meal(),
                          SizedBox(width: 12),
                          Meal1(),
                          SizedBox(width: 12),
                          Meal2(),
                          SizedBox(width: 12),
                          Meal(),
                          SizedBox(width: 12),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              bottomNavigationBar: GNav(
                backgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.purple,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                padding: EdgeInsets.all(9),
                gap: 3,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    text: 'My Cart',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Favorite',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
