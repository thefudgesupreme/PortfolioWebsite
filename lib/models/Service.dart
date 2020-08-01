import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title,image;
  final Color color;

  Service(this.id, this.title, this.image, this.color);
}

//For Demo list of Service
List<Service> services=[
  Service(1, "Graphic Design", "assets/images/graphic.png", Color(0xFFD9FFFC)),
  Service(2, "Web Design", "assets/images/desktop.png", Color(0xFFE4FFC7)),
  Service(3, "UI Design", "assets/images/ui.png", Color(0xFFFFF3DD)),
  Service(4, "Interaction Design", "assets/images/Interaction_design.png", Color(0xFFFFE0E0)),

];