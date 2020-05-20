import 'package:flutter/material.dart';


class PlaceholderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size _pantalla = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
  
          Placeholder(
            color: Colors.green,
            fallbackHeight: _pantalla.height * 0.07,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: _pantalla.width * 0.45,
                child: Placeholder(
                  fallbackHeight: _pantalla.height * 0.7,
                  color: Colors.blue,
                ),
              ),
              Container(
                width: _pantalla.width * 0.4,
                height: _pantalla.height * 0.7,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Placeholder(
                      fallbackHeight: _pantalla.height * 0.2,
                    ),
                    Placeholder(
                      fallbackHeight: _pantalla.height * 0.2,
                    ),
                    Placeholder(
                      fallbackHeight: _pantalla.height * 0.2,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            color: Colors.yellow,
            width: _pantalla.width,
            child: Placeholder(
              fallbackHeight: _pantalla.height * 0.1,
            ),
          ),
        ],
      ),
    );
  }
}