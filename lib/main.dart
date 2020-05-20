import 'package:flutter/material.dart';
import 'package:flutter_widget_guide/src/pages/menu_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MenuPage()
      ),
    );
  }
}