import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DateTimePickerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Date & Time Picker'),
      ),
      body: Column(
        children: <Widget>[
          MaterialButton(
            child: Text(
              "Cupertino date Picker",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.redAccent,
            onPressed: () {
              showModalBottomSheet(
              context: context,
              builder: (BuildContext builder) {
                return Container(
                  height: MediaQuery.of(context).copyWith().size.height / 2,
                  child: contenedorPicker(context)
                );
              });
            },
          ),
        ],
      ),
    );
  }

  Widget contenedorPicker( BuildContext context ) {

    TextStyle _estilo = TextStyle( color: Color(0xff1479F6));

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(onPressed: () => Navigator.pop(context), child: Text('Cancelar', style: _estilo)),
            Text('Fecha', style: TextStyle( fontWeight: FontWeight.bold )),
            FlatButton(onPressed: () => Navigator.pop(context), child: Text('Ok', style: _estilo)),
          ],
        ),
        Container(
          height: MediaQuery.of(context).copyWith().size.height / 2.5,
          child: CupertinoDatePicker(
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newdate) {
              print(newdate);
            },
            // use24hFormat: true,
            maximumDate: new DateTime(2025, 12, 30),
            minimumYear: 2010,
            maximumYear: 2025,
            minuteInterval: 1,
            mode: CupertinoDatePickerMode.date,
          )
        ),
      ],
    );
  }
}

// CupertinoTimerPicker(
//       mode: CupertinoTimerPickerMode.hms,
//       minuteInterval: 1,
//       secondInterval: 1,
//       initialTimerDuration: initialtimer,
//       onTimerDurationChanged: (Duration changedtimer) {
//         setState(() {
//           initialtimer = changedtimer;
//         });
//       },
//     );