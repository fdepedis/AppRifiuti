import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoScreen extends StatelessWidget {
  final String titleCard;

  ToDoScreen({Key key, @required this.titleCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          titleCard,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(22.0),
        alignment: FractionalOffset.center,
        child: Text(
          'Under construction...',
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
