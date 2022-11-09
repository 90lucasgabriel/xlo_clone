import 'package:flutter/material.dart';

import 'package:xlo_mobx/screens/base/home/home_screen.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomeScreen(),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
        ],
      ),
    );
  }
}
