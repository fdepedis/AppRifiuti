import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  final String nameCard;

  DetailScreen({Key key, @required this.index, @required this.nameCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          nameCard,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
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
        ],
      ),
    );
  }
}
