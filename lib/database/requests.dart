import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';
import 'package:for_test/widgets/action_request.dart';
import 'package:for_test/widgets/custom_text.dart';
import 'package:for_test/widgets/follow_button.dart';
import 'package:for_test/widgets/notification_item.dart';
import 'package:for_test/widgets/request_item.dart';

class RequestModel {
  final String image;
  final Widget action;
  final Color color;
  final String name;
  final String userId;

  RequestModel(
      {required this.name,
      required this.image,
      required this.action,
      required this.color,
      required this.userId});

  static Widget getAllRequests(int index) {
    if (index == 0) {
      return Column(
        children: [
          SizedBox(height: 20,),
          FractionallySizedBox(
            widthFactor: .95,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(Icons.people_alt_sharp,color: winColor,),
                    SizedBox(width: 5,),
                    Text('Invite & Find your friends'),
                  ],),
                  ElevatedButton(
                      onPressed: ()=>print('hi'),
                      child: Text('import'),
                    style: ElevatedButton.styleFrom(
                      primary: winColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(286)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      );
    } else if (index == 5) {
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 05,
            ),
            CustomText(text: 'You May know'),
            SizedBox(
              height: 12,
            )
          ],
        ),
      );
    }
    return RequestItem(
      action: allRequestss[index - 1].action,
      image: allRequestss[index - 1].image,
      color: allRequestss[index - 1].color,
      name: allRequestss[index - 1].name,
      userId: allRequestss[index - 1].userId,
    );
  }
}

List<RequestModel> allRequestss = [
  RequestModel(
      image: 'images/julia.png',
      action: ActionRequest(),
      color: mainColor,
      name: 'Jerome Bell',
      userId: '@amandadasilva'
  ),
  RequestModel(
    image: 'images/guy.png',
    action: ActionRequest(),
    color: mainColor,
    name: 'Guy Hawkins',
    userId: '@carolfernandes',
  ),
  RequestModel(
    image: 'images/cody.png',
    action: ActionRequest(),
    color: mainColor,
    name: 'Cody Fisher',
    userId: '@johndue',
  ),
  RequestModel(
    image: 'images/jane.png',
    action: ActionRequest(),
    color: mainColor,
    name: 'Jane Cooper',
    userId: '@tadeubonini',
  ),
  RequestModel(
    image: 'images/guy.png',
    action: ActionRequest(),
    color: mainColor,
    name: 'Guy Hawkins',
    userId: '@carolfernandes',
  ),
  RequestModel(
    image: 'images/g1.png',
    action: FollowButton(),
    color: mainColor,
    name: 'Brooklyn Simmons',
    userId: '@alexandreestolano',
  ),
  RequestModel(
    image: 'images/g2.png',
    action: FollowButton(),
    color: mainColor,
    name: 'Devon Lane',
    userId: '@brunopadilha',
  ),
  RequestModel(
    image: 'images/g3.png',
    action: FollowButton(),
    color: mainColor,
    name: 'Ronald Richards',
    userId: 'Ronald Richards',
  ),
];
