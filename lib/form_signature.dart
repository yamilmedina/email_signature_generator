
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignatureForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignatureFormState();
  }

}

class SignatureFormState extends State {
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
            onChanged: (value) {     },

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
            )
                       
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
            )
                       
          )
        ],
      ),
    );
  }

}