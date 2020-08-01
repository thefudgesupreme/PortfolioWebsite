import 'package:flutter/material.dart';

class Feedback{
  final String name, review,userPic;
  final int id;
  final Color color;

  Feedback(this.name, this.review, this.userPic, this.id, this.color);
}


//List of Demo feedbacks
List<Feedback> feedbacks=[
  Feedback("Phoebe Buffay", review, "assets/images/people.png",1, Color(0xFFFFF3DD),),
  Feedback("Ross Geller", review, "assets/images/people.png",2, Color(0xFFFFF3DD),),
  Feedback("Chandler Bing", review, "assets/images/people.png",3, Color(0xFFFFF3DD),),
];

String review='Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
