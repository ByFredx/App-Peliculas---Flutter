import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      width: double.infinity,
      height: 200.0,
      child: Swiper(
        itemCount: 10,
        itemWidth: 300.0,
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.fill,
          );
        },
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}
