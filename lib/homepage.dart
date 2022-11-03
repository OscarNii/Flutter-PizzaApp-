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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black54,
          body: Column(
            children: [
              SizedBox(height: 10),
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
                    Icon(
                      Icons.person_pin,
                      color: Colors.purple,
                      size: 45,
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
              SizedBox(height: 15),
              SingleChildScrollView(
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
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(17)),
                child: SizedBox(
                  height: 210,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Meal(),
                        Meal1(),
                        Meal2(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
    );
  }
}
