import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';
import 'package:for_test/widgets/custom_text.dart';
import 'package:for_test/widgets/user_name.dart';

import 'action_request.dart';

class RequestItem extends StatelessWidget {

  final String image;
  final Color? color;
  final Widget action;
  final String name;
  final String userId;

  const RequestItem({required this.image,this.color,required this.action,required this.name,required this.userId});


  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .95,
      child: Column(
        children: [
          Row(
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
                        spreadRadius: 0,
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
                        child: UserName(
                          name: name,
                          userId: userId,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        child: action,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
