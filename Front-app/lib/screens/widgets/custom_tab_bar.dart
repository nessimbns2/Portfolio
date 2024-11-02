import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({Key? key, required this.tabController}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Custom Tab Bar'),
      ),
    );
  }
}