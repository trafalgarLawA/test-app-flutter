import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 71),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0XFF1312FA),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(286)
                )
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.people_alt_sharp,
                  size: 16,
                ),
                SizedBox(width: 8,),
                Text(
                  '11',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )),
      ),
    );
  }
}