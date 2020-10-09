import 'package:flutter/material.dart';
import 'package:peliculas/src/pages/widgets/card_swiper_widget.dart';
import 'package:peliculas/src/providers/peliculas_providers.dart';
import 'package:peliculas/src/providers/peliculas_providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Peliculas'),
          backgroundColor: Colors.green[200],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              _swiperTarjetas(),
            ],
          ),
        ));
  }

  Widget _swiperTarjetas() {
    final peliculasProvider = new PeliculasProvider();
    peliculasProvider.getEncines();

    return CardSwiper(
      peliculas: [1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
  }
}
