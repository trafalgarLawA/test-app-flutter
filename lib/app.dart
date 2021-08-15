import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:for_test/widgets/notification_button.dart';
import 'constants/navigation_config.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

    List<Widget> screens;

   MyApp({required this.screens});
}

class _MyAppState extends State<MyApp> {


  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 3;



  Color selectedColor = Color(0XFF1312FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        elevation: 2.0,
        snakeViewColor: selectedColor,
        selectedItemColor:
        snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: listOfBottomItems,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [NotificationButton(

        )],
      ),
      body: widget.screens.elementAt(_selectedItemPosition),
    );
  }
}


