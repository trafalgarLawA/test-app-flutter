import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';


SnakeShape snakeShape = SnakeShape.circle;

bool showSelectedLabels = false;

bool showUnselectedLabels = false;

const List<BottomNavigationBarItem> listOfBottomItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.search), label: 'search'),
  const BottomNavigationBarItem(
    icon: Icon(Icons.arrow_drop_down_circle_rounded,size: 33,), label: 'home',),
  const BottomNavigationBarItem(
      icon: Icon(Icons.notifications), label: 'notifications'),
  const BottomNavigationBarItem(
      icon: CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage('images/pic.png'),
      ), label: 'profile')
];