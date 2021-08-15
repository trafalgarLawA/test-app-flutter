import 'package:flutter/material.dart';
import 'package:for_test/screens/requests_screen.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 71),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // primary: ,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(286)
                )
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RequestScreen()),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.people_alt_sharp,
                  size: 16,
                ),
                SizedBox(width: 8,),
                Text(
                  '22',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )),
      ),
    );
  }
}