import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage('Cars'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
        ),
        body: new ListView(children: <Widget>[
          CarWidget('Bmw', 'M3',
              'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
          CarWidget('Nissan', 'GTR',
              'https://www.carstore.com/-/media/carstore/makes/dacia/sandero/dacia-sandero-thumbnail-480x270-50.ashx?mh=519&la=en&h=270&w=480&mw=519&hash=90BFFB80FE7B716378D838F4D718E866'),
          CarWidget('Nissan', 'Sentra',
              'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ]));
  }
}

class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, this.imageSrc) : super();
  final String make;
  final String model;
  final String imageSrc;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Column(children: <Widget>[
              Text(
                '$make $model',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.network(imageSrc),
              )
            ]))));
  }
}
