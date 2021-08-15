import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';
import 'package:for_test/database/notifications.dart';
import 'package:for_test/widgets/notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      child: FractionallySizedBox(
        child: Container(
          color: Colors.white,
          child: ListView.builder(
            //added one to the list size cause of the fake database logic implemented take a look at lib/database/notifications.dart to understand
            itemCount: allNotifications.length + 1,
            itemBuilder: (BuildContext context, int index) {
              return NotificationMdl.getAllNotifications(index);
            },
          ),
        ),
      ),
    );
  }
}
