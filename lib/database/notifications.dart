import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';
import 'package:for_test/widgets/custom_text.dart';
import 'package:for_test/widgets/notification_item.dart';

class NotificationMdl {
  final List<TextSpan> content;
  final String image;
  final Widget action;
  final Color color;

  NotificationMdl(
      {required this.content, required this.image, required this.action,required this.color});

  static Widget getAllNotifications(int index){
    if(index == 0){
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 05,),
            CustomText(text: 'Today'),
            SizedBox(height: 12,)
          ],
        ),
      );
    }
    else if(index == 5){
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 05,),
            CustomText(text: 'Yesterday'),
            SizedBox(height: 12,)
          ],
        ),
      );
    }
    return NotificationItem(
      action: allNotifications[index-1].action,
      image:  allNotifications[index-1].image,
      content: allNotifications[index-1].content,
      color: allNotifications[index-1].color,
    );

  }
}

List<NotificationMdl> allNotifications = [
  NotificationMdl(
    content: [
      TextSpan(
          text: 'Json derulo ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      TextSpan(
        text: 'Invited you to check ',
      ),
      TextSpan(
          text: 'Cabestan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ))
    ],
    image: 'images/pic.png',
    action: Text(
      '1m ago',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    color: mainColor
  ),
  NotificationMdl(
    image: 'images/gift.png',
    content: [
      TextSpan(text: 'You just redmeemd a gift from '),
      TextSpan(text: 'Starbucks',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: winColor,
    action:  Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ElevatedButton(
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
  ),
  NotificationMdl(
    image: 'images/girl.png',
    content: [
      TextSpan(text: 'Sofia ',style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: 'Invited you to check ',),
      TextSpan(text: 'Aquapark',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: mainColor,
    action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
  ),
  NotificationMdl(
    image: 'images/julia.png',
    content: [
      TextSpan(text: 'Julia ',style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: 'Invited you to check ',),
      TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: mainColor,
    action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
  ),
  NotificationMdl(
    image: 'images/darell.png',
    content: [
      TextSpan(text: 'Darell ',style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: 'Invited you to check ',),
      TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: mainColor,
    action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
  ),
  NotificationMdl(
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
  NotificationMdl(
    image: 'images/gift.png',
    content: [
      TextSpan(text: 'You just redmeemd a gift from '),
      TextSpan(text: 'Starbucks',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: winColor,
    action:  Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ElevatedButton(
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
  ),
  NotificationMdl(
    image: 'images/julia.png',
    content: [
      TextSpan(text: 'Julia ',style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: 'Invited you to check ',),
      TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: mainColor,
    action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
  ),
  NotificationMdl(
    image: 'images/girl.png',
    content: [
      TextSpan(text: 'Sofia ',style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: 'Invited you to check ',),
      TextSpan(text: 'Aquapark',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: mainColor,
    action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
  ),
  NotificationMdl(
    image: 'images/julia.png',
    content: [
      TextSpan(text: 'Julia ',style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: 'Invited you to check ',),
      TextSpan(text: 'Cabestan',style : TextStyle(fontWeight: FontWeight.bold,))
    ],
    color: mainColor,
    action:  Text('1m ago',style: TextStyle(fontWeight: FontWeight.w300),),
  ),
];
