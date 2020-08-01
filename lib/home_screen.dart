import 'package:PortfolioWebsite/sections/topSection/top_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children:[
          TopSection(),
          ],
        ),
      ),
    );
  }
}