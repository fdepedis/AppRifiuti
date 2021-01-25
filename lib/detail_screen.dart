import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int index;

  DetailScreen({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dettaglio Rifiuti"),
      ),
      body: ListView(children: <Widget>[
        Expanded(
          child: Container(
            width: 500,
            height: 240,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(""), fit: BoxFit.cover),
            ),
          ),
        ),
        /*Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(popular.results[index].overview),
      ),*/
      ]),
    );
  }
}
