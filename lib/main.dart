import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:for_test/widgets/notification_button.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnakeNavigationBar Example ',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),Text(
      'Index : School',
      style: optionStyle,
    ),Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;

  bool showUnselectedLabels = false;

  Color selectedColor = Color(0XFF1312FA);

  Gradient selectedGradient =
  const LinearGradient(colors: [Colors.red, Colors.amber]);

  Color unselectedColor = Colors.blueGrey;

  Gradient unselectedGradient =
  const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  Color? containerColor;

  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];

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
      items: [
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
      ],
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
        actions: [NotificationButton()],
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedItemPosition)),
    );
  }
}


