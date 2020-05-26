import 'package:flutter/cupertino.dart';

class PreviewContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
      
          Text('Welcome to Flutter')
        ],
      ),
    );
  }

}