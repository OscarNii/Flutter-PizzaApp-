// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Meal2 extends StatelessWidget {
  const Meal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 220,
        height: 220,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage('assets/jollof.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
