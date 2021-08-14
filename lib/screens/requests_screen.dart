import 'package:flutter/material.dart';

class RequestScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Follow requests',style: TextStyle(color: Colors.black87),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: ()=> Navigator.pop(context),
        ),
      ),
     /* body: ListView.builder(

      ),*/
    );
  }
}
