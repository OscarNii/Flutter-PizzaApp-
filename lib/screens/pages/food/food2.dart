// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Food2 extends StatelessWidget {
  const Food2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 170,
        height: 170,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage('assets/salad.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
