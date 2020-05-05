import 'dart:math';

import 'package:flutter/material.dart';

class Botonespage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
        ],
      ),
    );
  }

  Widget _fondoApp(){

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
          ]
        ), 
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
      height: 340.0,
      width: 340.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]
        ),
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
}