import 'package:flutter/material.dart';
import 'package:for_test/constants/theme.dart';

class ActionRequest extends StatelessWidget {
  const ActionRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: ()=> print('hi'), child: Text('Confirm'),
            style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(286)
                )
            )
        ),
        ElevatedButton(
          child: Text("Delete",style: TextStyle(color: Colors.black87),),
          onPressed: () => print('Delete'),
          style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(286)
              ),
            primary: Colors.white,
            onPrimary: mainColor,
            elevation: 0.0
          ),
        )
      ],
    );
  }
}
