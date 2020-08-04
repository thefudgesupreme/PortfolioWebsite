import 'dart:ui';

import 'package:PortfolioWebsite/constants.dart';
import 'package:flutter/material.dart';

import 'components/logo_blur_box.dart';
import 'components/person_pic.dart';


class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900,minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image:DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage("assets/images/background.png"),
        ),
      ),

      child: Container(
        margin: EdgeInsets.only(top:kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),),
            Positioned(
              bottom: 0,
              child: Menu())
          ],
        ),
        ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  
  int selectedIndex=0;
  int hoverIndex=0;
  List<String> menu=[
      'Home',
      "About",
      'Services',
      'Portfolio',
      "Contact"
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(menu.length, (index) => buildMenu(index),),
      ),
    );
  }

  Widget buildMenu(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
      child: Container(
      constraints: BoxConstraints(minWidth: 122),
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            menu[index],
            style: TextStyle(
              fontSize: 20,
              color:kTextColor,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 275),
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -2 : -32,
            child: Image.asset("assets/images/Hover.png"),
            )
        ],
      ),
      ),
  );
}