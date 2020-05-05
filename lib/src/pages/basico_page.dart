import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: FadeInImage(
        height: 200.0,
        fit: BoxFit.cover,
        placeholder: AssetImage('assets/img/cargando.gif'),
        image: NetworkImage(
            'https://image.posta.com.mx/sites/default/files/styles/full_article_phone_1x/public/suiza-monte-nieve.jpg'),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Suiza',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'El tren en invierno',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '51',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'CALL'),
        _crearAccion(Icons.near_me, 'ROUTE'),
        _crearAccion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'El tren más famoso de Suiza se ha convertido en una atracción para los miles de turistas que visitan anualmente el país. De esta manera, son muchos los que escogen este transporte para disfrutar de alguno de los pueblos aislados que se encuentran en medio de los Alpes.Por ese motivo, Switzerland Travel Centre, la agencia nacional de turismo del país, ofrece un pack para disfrutar de la experiencia de Excellence Class con todas las comodidades. Así, a partir de 1.200 euros, los viajeros pueden disfrutar de dos noches más desayuno en dos lujosos hoteles: uno en St.Moritz -la noche previa al viaje y en Zermatt -la noche posterior-. Todo esto más el placer de vivir una experiencia única a bordo del Glacier Express. El "expreso más lento del mundo", como es conocido en Suiza, emplea ocho horas para recorrer los 291 kilómetros que separan ambas ciudades, atravesando 91 túneles y cruzando 291 puentes, casualmente uno por cada kilómetro. Sin lugar a dudas, tomar el Glacier Express es la mejor manera de disfrutar de los Alpes en toda su esencia.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
