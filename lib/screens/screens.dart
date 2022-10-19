import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fries.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pizza.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drink.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
