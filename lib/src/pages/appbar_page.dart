import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Mostrando Snackbar'), duration: Duration( milliseconds: 700 ));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Página Siguiente'),
        ),
        body: const Center(
          child: Text(
            'Esta es la página siguiente',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class AppbarPage extends StatelessWidget {
  AppbarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: const Text('AppBar Demo'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Mostrar Snackbar',
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(snackBar);
                },
              ),
              IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Next page',
                onPressed: () {
                  openPage(context);
                },
              ),
            ],
          ),
          body: const Center(
            child: Text(
              'Esta es la página principal',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
