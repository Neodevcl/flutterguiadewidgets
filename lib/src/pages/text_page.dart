import 'package:flutter/material.dart';


class TextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox( width: double.infinity ),
          Text('Hola Mundo, soy un texto normal'),
          SizedBox( height: 40 ),
          Text('Hola Mundo, soy un texto en negrita', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox( height: 40 ),
          Text.rich(
            TextSpan(
              text: 'Hola Mundo, ',
              children: [
                TextSpan( text: 'Italica ', style: TextStyle( fontStyle: FontStyle.italic) ),
                TextSpan( text: 'negrita ', style: TextStyle( fontWeight: FontWeight.bold ) ),
                TextSpan( text: 'normal', style: TextStyle( fontStyle: FontStyle.normal) )
              ]
            )
          ),
          SizedBox( height: 40 ),
          Text.rich(
            TextSpan(
              text: 'Hola Mundo, ' ,
              style: TextStyle( color: Colors.purple, fontWeight: FontWeight.bold ),
              children: [
                TextSpan( text: 'soy un ', style: TextStyle( color: Colors.red, fontWeight: FontWeight.bold ) ),
                TextSpan( text: 'texto con ', style: TextStyle( color: Colors.blue, fontWeight: FontWeight.bold ) ),
                TextSpan( text: 'colores', style: TextStyle( color: Colors.green, fontWeight: FontWeight.bold ) )
              ]
            )
          )
        ],
      ),
    );
  }
}