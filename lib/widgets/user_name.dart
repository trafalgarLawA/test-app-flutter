import 'package:flutter/cupertino.dart';

class UserName extends StatelessWidget {

  final String name;
  final String userId;

  UserName({required this.userId,required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 1,),
        Text(userId,style: TextStyle(
            fontSize: 12,
          fontWeight: FontWeight.w200
        ),)
      ],
    );
  }
}
