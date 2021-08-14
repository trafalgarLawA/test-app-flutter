import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';
import 'package:for_test/widgets/notification_item.dart';

class NotificationsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      child: FractionallySizedBox(
        widthFactor: .92,
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Text(
                  'Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                  ),
                  textAlign: TextAlign.left,
              ),
              SizedBox(height: 16,),
              NotificationItem(
                image: 'images/pic.png',
                content: [
                  TextSpan(text: 'Json derulo ',style: TextStyle(fontWeight: FontWeight.bold,)),
                  TextSpan(text: 'Invited you to check ',),
                  TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: mainColor,
                action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/gift.png',
                content: [
                  TextSpan(text: 'You just redmeemd a gift from '),
                  TextSpan(text: 'Starbucks',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: winColor,
                action:  ElevatedButton(
                  child: Text('check'),
                  onPressed: ()=>print('hi'),
                  style: ElevatedButton.styleFrom(
                    primary: winColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(286)
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/girl.png',
                content: [
                  TextSpan(text: 'Sofia ',style: TextStyle(fontWeight: FontWeight.bold,)),
                  TextSpan(text: 'Invited you to check ',),
                  TextSpan(text: 'Aquapark',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: mainColor,
                action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/julia.png',
                content: [
                  TextSpan(text: 'Julia ',style: TextStyle(fontWeight: FontWeight.bold,)),
                  TextSpan(text: 'Invited you to check ',),
                  TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: mainColor,
                action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
              ),
              SizedBox(height: 20,),
              Text(
                'Yesterday',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/darell.png',
                content: [
                  TextSpan(text: 'Darell ',style: TextStyle(fontWeight: FontWeight.bold,)),
                  TextSpan(text: 'Invited you to check ',),
                  TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: mainColor,
                action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/diamond.png',
                content: [
                  TextSpan(text: 'Congratulations ',style: TextStyle(fontWeight: FontWeight.bold,)),
                  TextSpan(text: 'you are a',),
                  TextSpan(text: ' Brilliant Magnet',style : TextStyle(fontWeight: FontWeight.bold,color: rankColor)),
                  TextSpan(text: ' now',),
                ],
                color: rankColor,
                action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/gift.png',
                content: [
                  TextSpan(text: 'You just redmeemd a gift from '),
                  TextSpan(text: 'Starbucks',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: winColor,
                action:  ElevatedButton(
                  child: Text('check'),
                  onPressed: ()=>print('hi'),
                  style: ElevatedButton.styleFrom(
                      primary: winColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(286)
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              NotificationItem(
                image: 'images/girl.png',
                content: [
                  TextSpan(text: 'Sofia ',style: TextStyle(fontWeight: FontWeight.bold,)),
                  TextSpan(text: 'Invited you to check ',),
                  TextSpan(text: 'Aquapark',style : TextStyle(fontWeight: FontWeight.bold,))
                ],
                color: mainColor,
                action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
