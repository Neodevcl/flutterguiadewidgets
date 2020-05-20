import 'package:flutter/material.dart';
import 'package:flutter_widget_guide/src/pages/alert_page.dart';
import 'package:flutter_widget_guide/src/pages/align_page.dart';
import 'package:flutter_widget_guide/src/pages/appbar_page.dart';
import 'package:flutter_widget_guide/src/pages/bottombar_page.dart';
import 'package:flutter_widget_guide/src/pages/card_page.dart';
import 'package:flutter_widget_guide/src/pages/column_page.dart';
import 'package:flutter_widget_guide/src/pages/container_page.dart';
import 'package:flutter_widget_guide/src/pages/datetimepicker_page.dart';
import 'package:flutter_widget_guide/src/pages/icon_page.dart';
import 'package:flutter_widget_guide/src/pages/image_page.dart';
import 'package:flutter_widget_guide/src/pages/placeholder_page.dart';
import 'package:flutter_widget_guide/src/pages/row_page.dart';
import 'package:flutter_widget_guide/src/pages/scaffold_page.dart';
import 'package:flutter_widget_guide/src/pages/text_page.dart';


class MenuPage extends StatelessWidget {

  final String titulo = 'Flutter Guía de Widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      drawer: Drawer(),
      body: _ListaItems(),
    );
  }
}

class _ListaItems extends StatelessWidget {
  
  final List lista = [
    { 'titulo': 'Container', 'ruta': ContainerPage() },
    { 'titulo': 'Row', 'ruta': RowPage() },
    { 'titulo': 'Column', 'ruta': ColumnPage() },
    { 'titulo': 'Image', 'ruta': ImagePage() },
    { 'titulo': 'Text', 'ruta': TextPage() },
    { 'titulo': 'Icon', 'ruta': IconPage() },
    { 'titulo': 'Scaffold', 'ruta': ScaffoldPage() },
    { 'titulo': 'Appbar', 'ruta': AppbarPage() },
    { 'titulo': 'Placeholder', 'ruta': PlaceholderPage() },
    { 'titulo': 'Alert Dialog', 'ruta': AlertPage() },
    { 'titulo': 'Align', 'ruta': AlignPage() },
    { 'titulo': 'BottomNavigationBar', 'ruta': BottomBarPage() },
    { 'titulo': 'Card', 'ruta': CardPage() },
    { 'titulo': 'Date & Time Picker', 'ruta': DateTimePickerPage() },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: lista.length, 
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red
          ),
          child: ListTile(
            title: Text(lista[index]['titulo']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: ( BuildContext context ) => lista[index]['ruta'])
            )
          ),
        );
      }, 
    );
  }
}