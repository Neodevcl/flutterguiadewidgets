import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  ScaffoldPage({Key key}) : super(key: key);

  @override
  _ScaffoldPage createState() => _ScaffoldPage();
}

class _ScaffoldPage extends State<ScaffoldPage> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Sample Code'),
          ),
          body: Center(
            child: Text('Hiciste tap en el botón $_count veces.'),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 50.0,
              color: Colors.blue
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() {
              _count++;
            }),
            tooltip: 'Increment Counter',
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
