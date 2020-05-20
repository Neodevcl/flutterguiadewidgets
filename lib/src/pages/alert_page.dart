import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              spacing: 30,
              runSpacing: 30,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue,
                  height: 50,
                  child: Text('SimpleDialog', style: TextStyle(color: Colors.white, fontSize: 20)),
                  onPressed: () => _alertaSimple(context),
                ),
                // SizedBox(  ),
                CupertinoButton(
                  color: Color(0xff1476EF),
                  child: Text('Cupertino Alert'),
                  onPressed: () => _alertaCupertino(context),
                ),

                MaterialButton(
                  color: Colors.red,
                  child: Text('AlertDialog', style: TextStyle(color: Colors.white, fontSize: 20)),
                  onPressed: () => _alertaNormal(context),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _alertaSimple( BuildContext context ) async {
    return showDialog<void>(
      context: context, // user must tap button!
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Salir'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        );
      },
    );
  }

  Future<void> _alertaCupertino( BuildContext context ) async {
    return showDialog<void>(
      context: context, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Alerta con estilo Cupertino'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Esta es una desmostración de un mensaje de alerta.'),
                Text('Cupertino es el estilo de las aplicaciones en IOS'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Salir'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _alertaNormal( BuildContext context ) async {
    return showDialog<void>(
      context: context, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta normal'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Esta es una desmostración de un mensaje de alerta.'),
                Text('A diferencia del SimpleDialog, esta alerta posee contenido.'),
                SizedBox( height: 20 ),
                FlutterLogo(size: 60)
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Salir'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
