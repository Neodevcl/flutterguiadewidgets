import 'package:flutter/material.dart';


class AlignPage extends StatefulWidget {

  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {

  Alignment _alineacion = Alignment.center;
  Alignment _center = Alignment.center;
  Alignment _topLeft = Alignment.topLeft;
  Alignment _topCenter = Alignment.topCenter;
  Alignment _topRight = Alignment.topRight;
  Alignment _centerLeft = Alignment.centerLeft;
  Alignment _centerRight = Alignment.centerRight;
  Alignment _bottomLeft = Alignment.bottomLeft;
  Alignment _bottomCenter = Alignment.bottomCenter;
  Alignment _bottomRight = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {

    _cambioAlineacion( Alignment value ) => setState( () => _alineacion = value );

    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                _OpcionRow( titulo: 'topLeft', valor: _topLeft, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'topCenter', valor: _topCenter, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'topRight', valor: _topRight, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'centerLeft', valor: _centerLeft, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'center', valor: _center, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'centerRight', valor: _centerRight, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'bottomLeft', valor: _bottomLeft, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'bottomCenter', valor: _bottomCenter, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
                _OpcionRow( titulo: 'bottomRight', valor: _bottomRight, valorGrupo: _alineacion, onChanged: _cambioAlineacion ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.yellow,
            child: Align(
              alignment: _alineacion,
              child: FlutterLogo(size: 100, style: FlutterLogoStyle.stacked, textColor: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class _OpcionRow<T> extends StatelessWidget {

  final T valor;
  final T valorGrupo;
  final String titulo;
  final ValueChanged<T> onChanged;

  const _OpcionRow({
    this.valor,
    this.valorGrupo,
    this.titulo,
    this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Radio<T>(
          // : Text('$titulo'),
          value: valor, 
          groupValue: valorGrupo, 
          onChanged: onChanged
        ),
        Text('$titulo')
      ],
    );
  }
}