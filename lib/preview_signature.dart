import 'package:flutter/cupertino.dart';

class PreviewContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PreviewState();
  }

}

class PreviewState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
        children: <Widget>[
          Text('Welcome to Flutter')
        ],
      ),
    );
  }

}