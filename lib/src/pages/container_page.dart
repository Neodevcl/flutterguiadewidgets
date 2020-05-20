import 'package:flutter/material.dart';


class ContainerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.info ), 
            onPressed: (){}
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.amber[600],
              width: 48,
              height: 48,
              child: Center(child: Text('48 x 48')),
            ),

            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text(
                'Container con rotación',
                style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white)
              ),
              transform: Matrix4.rotationZ(0.1),
            ),

            Container(
              color: Colors.black,
              width: 150,
              height: 150,
              child: Center(
                child: Center(
                  child: Container(
                    color: Colors.red,
                    width: 80,
                    height: 80,
                    child: Center(
                      child: Container(
                        color: Colors.blue,
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Container(
                            color: Colors.yellow,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}