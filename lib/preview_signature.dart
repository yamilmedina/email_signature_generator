import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:email_signature_generator/form_data.dart';
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
  final FormData formData = FormData();
  GlobalKey _globalKey = new GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      RenderRepaintBoundary boundary =
          _globalKey.currentContext.findRenderObject();
      ui.Image image = await boundary.toImage();
      ByteData byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      final anchor = AnchorElement(
      href: "data:application/octet-stream;charset=utf-16le;base64,$bs64")
      ..setAttribute("download", "file.txt")
      ..click();
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
    }
  }

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
          RepaintBoundary(
          key: _globalKey,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(formData.name, style: TextStyle(fontWeight: FontWeight.w800),)
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(formData.title, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black.withOpacity(0.7)),)
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(formData.division, style: TextStyle(color: Colors.black.withOpacity(0.7)),)
              ),
              Divider(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(formData.email)
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(formData.phone)
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(formData.address, style: TextStyle(),)
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image(
                image: AssetImage('assets/images/transbank-logo.png'),
                width: 250,)
              ),
            ],
          ),
        ),
        new RaisedButton(
                child: Text('Descargar firma'),
                onPressed: _capturePng,
              ),
        ],
      )
        
      );
  }

  updateStateOnEvent(message) {
    setState(() {
      //triggering render onMessage received
    });
  }

}