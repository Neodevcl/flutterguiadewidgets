import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _Tarjeta( 
              titulo: 'Título de la tarjeta',
              descripcion: 'Esta es la descripción de la tarjeta.' 
            ),
            _TarjetaImagen()
          ],
        )
      ),
    );
  }
}

class _TarjetaImagen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('assets/placeholder.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Tienda Flutter', style: TextStyle( fontSize: 30, color: Color(0xff7D48EF), fontWeight: FontWeight.bold )),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Color(0xff7D48EF)),
                    Icon(Icons.star, color: Color(0xff7D48EF)),
                    Icon(Icons.star, color: Color(0xff7D48EF)),
                    Icon(Icons.star, color: Color(0xff7D48EF)),
                    Icon(Icons.star_half, color: Color(0xff7D48EF)),
                    SizedBox( width: 20 ),
                    Text('4.5  (213)', style: TextStyle(color: Color(0xffAC75F4), fontSize: 20))
                  ],
                ),
                SizedBox( height: 20, ),
                Row(
                  children: <Widget>[
                    Text('\$ - Card, Flutter',  style: TextStyle(color: Color(0xff7D48EF), fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                Text('Este es un ejemplo de una tarjeta personalizada, que incluye una imagen, íconos y textos.', style: TextStyle(color: Color(0xffAC75F4), fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {

  final String titulo;
  final String descripcion;

  const _Tarjeta({
    this.titulo,
    this.descripcion
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text('$titulo'),
            subtitle: Text('$descripcion'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
