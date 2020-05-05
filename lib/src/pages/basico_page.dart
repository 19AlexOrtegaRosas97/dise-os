import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/img/cargando.gif'), 
              image: NetworkImage('https://image.posta.com.mx/sites/default/files/styles/full_article_phone_1x/public/suiza-monte-nieve.jpg'),
            ),

            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Suiza'),
                    Text('El tren mas hermoso en invierno')
                  ],
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}