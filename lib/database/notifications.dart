import 'package:flutter/widgets.dart';

class Notifications {

  final List<String> content;
  final String image;
  final Widget action;

  Notifications({required this.content,required this.image,required this.action});


}



List<Notifications> allNotifications = [

];