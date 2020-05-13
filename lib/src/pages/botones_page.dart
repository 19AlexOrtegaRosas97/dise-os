import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Botonespage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(00, 0.6),
            end: FractionalOffset(00, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ]),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 340.0,
        width: 340.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this Tarnsaction into a particular category',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,size: 30.0,),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart,size: 30.0,),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle,size: 30.0,),
              title: Container(),
            ),
          ]),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green,Icons.stay_current_portrait,'Call'),
            _crearBotonRedondeado(Colors.blue,Icons.access_alarms,'Alarm')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueGrey,Icons.add_location,'Position'),
            _crearBotonRedondeado(Colors.orangeAccent,Icons.adb,'Android')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent,Icons.airplanemode_active,'Flights'),
            _crearBotonRedondeado(Colors.yellow,Icons.mail_outline,'Message')
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0,sigmaY: 2.0),
        child: Container(
          height: 170.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 67, 107, 0.70),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: color,
                child: Icon(icono, color: Colors.white,size: 30.0,),
              ),
              Text(texto,style: TextStyle(color: color),),
              SizedBox(height: 5.0,),
            ],
          ),
        ),
      ),
    );
  }
}
