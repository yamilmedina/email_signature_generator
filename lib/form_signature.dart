
import 'dart:async';
import 'package:email_signature_generator/form_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignatureForm extends StatefulWidget {
  final StreamController streamController;  

  SignatureForm({@required this.streamController});

  @override
  SignatureFormState createState() => SignatureFormState();

}

class SignatureFormState extends State<SignatureForm> {

  final FormData formData = FormData();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
          children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: "Ronaldo Nazário",
              labelText: "Nombre",
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
            ),
            onChanged: (value) { 
              formData.name = value;
              widget.streamController.sink.add(null); },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Rol/Cargo",
              hintText: "Líder Técnico",
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
            ),
            onChanged: (value) { 
              formData.title = value;
              widget.streamController.sink.add(null); },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "División",
              hintText: "Gerencia División Operaciones y Tecnología",
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
            ),
            onChanged: (value) { 
              formData.division = value;
              widget.streamController.sink.add(null); },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Teléfono",
              hintText: "+1 234 567 8910",
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
            ),
            onChanged: (value) { 
              formData.phone = value;
              widget.streamController.sink.add(null); },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Correo",
              hintText: "rnazario@transbank.cl",
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
            ),
            onChanged: (value) { 
            formData.email = value;
            widget.streamController.sink.add(null); },      
      
          )
        ],
      ),
    );
  }

  someMethod() {}

}