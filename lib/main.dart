import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:for_test/screens/profile_screen.dart';
import 'package:for_test/widgets/notification_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app.dart';
import 'constants/theme.dart';
import 'screens/add_screen.dart';
import 'screens/home_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/search_screen.dart';


void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For test',
      debugShowCheckedModeBanner: false,
      theme: appTheme(context),
      home: SafeArea(
        child: MyApp(
          //to add a new screen please make sure you add a new 'BottomNavigationBarItem' in constants/navigation_config.dart
          screens: [
            HomeScreen(),
            SearchScreen(),
            AddScreen(),
            NotificationsScreen(),
            ProfileScreen()
          ],
        ),
      ),
    );
  }
}


