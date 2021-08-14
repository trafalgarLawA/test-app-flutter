import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';

class NotificationItem extends StatelessWidget {

  final String image;
  final List<TextSpan> content;
  final Color? color;
  final Widget action;

  const NotificationItem({required this.image,required this.content,this.color,required this.action});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 72,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(242)),
              color: Colors.white,
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 30,
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: content,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                action
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        CircleAvatar(
          radius: 8,
          backgroundColor: color??Colors.transparent,
        )
      ],
    );
  }
}
