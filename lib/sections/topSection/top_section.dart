import 'dart:ui';

import 'package:PortfolioWebsite/constants.dart';
import 'package:flutter/material.dart';

import 'components/glass_content.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
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
        child: LogoBlurBox(size: size),
        ),
    );
  }
}

class LogoBlurBox extends StatelessWidget {
  const LogoBlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset('assets/images/Logo.png'),
        GlassContent(size: size),
        Spacer(flex:3),
      ],
    );
  }
}

