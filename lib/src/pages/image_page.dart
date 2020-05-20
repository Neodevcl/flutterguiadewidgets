import 'package:flutter/material.dart';


class ImagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size _pantalla = MediaQuery.of(context).size;
    TextStyle _estilo = TextStyle( fontSize: 20,  );

    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Imagen desde Assets', style: _estilo),
          Container(
            height: _pantalla.height * 0.4,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                'assets/owl-2.jpg'
              ),
            ),
          ),
          Text('Imagen desde Network', style: _estilo),
          Container(
            height: _pantalla.height * 0.4,
            child: FadeInImage(
              placeholder: AssetImage('assets/cargando.gif'),
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
            ),
          ),
        ],
      ),
    );
  }
}