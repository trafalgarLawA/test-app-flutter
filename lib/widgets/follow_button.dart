import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ()=>print('hi'),
        child: Text('Follow'),
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(286)
          )
      ),
    );
  }
}
