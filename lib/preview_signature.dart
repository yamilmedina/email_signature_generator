import 'dart:async';

import 'package:flutter/cupertino.dart';

class PreviewContainer extends StatefulWidget {

  final Stream stream;

  PreviewContainer({@required this.stream});

  @override
  State<StatefulWidget> createState() {
    return PreviewState();
  }

}

class PreviewState extends State<PreviewContainer> {
  StreamSubscription streamSubscription;
  String _name;

  @override
  initState() {
    super.initState();
    _name = "Ronaldo Nazário";
    streamSubscription = widget.stream.listen((message) => someMethod(message));
  }

  @override
  dispose() {
    super.dispose();
    streamSubscription.cancel();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
      
          Text(_name)
        ],
      ),
    );
  }

  someMethod(message) {
    setState(() {
      _name = message ?? "Ronaldo Nazário";
    });
  }

}