import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://static.nationalgeographic.co.uk/files/styles/image_3200/public/big-cats_02.jpg?w=1190&h=792',
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt-br.facebook.com%2FRTnews%2Fposts%2Fdonald-trump-has-called-himself-the-chosen-one-to-take-on-china-by-fighting-in-t%2F10158094727514411%2F&psig=AOvVaw3dbHftrbJ4mmlCJlzcc4p5&ust=1604807371956000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKCpv73D7-wCFQAAAAAdAAAAABAJ',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
