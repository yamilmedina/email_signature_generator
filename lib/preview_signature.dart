import 'dart:async';

import 'package:email_signature_generator/form_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  final FormData formData = FormData();

  @override
  initState() {
    super.initState();
    streamSubscription = widget.stream.listen((message) => updateStateOnEvent(message));
  }

  @override
  dispose() {
    super.dispose();
    streamSubscription.cancel();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: SelectableText.rich(
              TextSpan(text: "\n",
              children: <TextSpan>[
                TextSpan(text: formData.name + "\n", style: TextStyle(fontWeight: FontWeight.w800)),
                TextSpan(text: formData.title + "\n", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black.withOpacity(0.7)),),
                TextSpan(text: formData.division + "\n", style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                TextSpan(text: "\n", style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                TextSpan(text: formData.email + "\n", style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                TextSpan(text: formData.phone + "\n", style: TextStyle(color: Colors.black.withOpacity(0.7)),),  
                TextSpan(text: formData.address + "\n", style: TextStyle(color: Colors.black.withOpacity(0.7)),),  
                TextSpan(text: "\n", style: TextStyle(color: Colors.black.withOpacity(0.7)),),
              ]
              ),
            )
          ),  
          Align(
            alignment: Alignment.centerLeft,
            child: Image(
            image: AssetImage('assets/images/transbank-logo.png'),
            width: 250,)
          ),
        ],
      ),
    );
  }

  updateStateOnEvent(message) {
    setState(() {
      //triggering render onMessage received
    });
  }

}