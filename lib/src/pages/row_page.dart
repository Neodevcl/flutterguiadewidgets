import 'package:flutter/material.dart';


class RowPage extends StatefulWidget {

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {

  MainAxisAlignment _alineamiento = MainAxisAlignment.start;
  MainAxisAlignment _start = MainAxisAlignment.start;
  MainAxisAlignment _center = MainAxisAlignment.center;
  MainAxisAlignment _spaceAround = MainAxisAlignment.spaceAround;
  MainAxisAlignment _spaceBetween = MainAxisAlignment.spaceBetween;
  MainAxisAlignment _spaceEvenly = MainAxisAlignment.spaceEvenly;
  MainAxisAlignment _end = MainAxisAlignment.end;

  @override
  Widget build(BuildContext context) {

    _cambioAlineamiento( MainAxisAlignment value ) => setState( () => _alineamiento = value );

    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Container(
        margin: EdgeInsets.only( left: 10, right: 10, top: 10, bottom: 20),
        child: Column(
          children: <Widget>[
            SizedBox( width: double.infinity),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  _OpcionRow( titulo: 'start', valor: _start, valorGrupo: _alineamiento, onChanged: _cambioAlineamiento ),
                  _OpcionRow( titulo: 'center', valor: _center, valorGrupo: _alineamiento, onChanged: _cambioAlineamiento ),
                  _OpcionRow( titulo: 'spaceAround', valor: _spaceAround, valorGrupo: _alineamiento, onChanged: _cambioAlineamiento ),
                  _OpcionRow( titulo: 'spaceBetween', valor: _spaceBetween, valorGrupo: _alineamiento, onChanged: _cambioAlineamiento ),
                  _OpcionRow( titulo: 'spaceEvenly', valor: _spaceEvenly, valorGrupo: _alineamiento, onChanged: _cambioAlineamiento ),
                  _OpcionRow( titulo: 'end', valor: _end, valorGrupo: _alineamiento, onChanged: _cambioAlineamiento ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: _alineamiento,
                children: <Widget>[
                  cajaContainer(Colors.green, Colors.red),
                  cajaContainer(Colors.yellow, Colors.green),
                  cajaContainer(Colors.red, Colors.yellow),
                ],
              ),
            ),
          ],
        ),
      ),
    ); 
  }

  Widget cajaContainer( Color color, Color colorLogo ) {
    return Container(
      width: 70,
      color: color,
      child: Center(child: FlutterLogo( size: 50.0, colors: colorLogo, style: FlutterLogoStyle.stacked, textColor: colorLogo,)),
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