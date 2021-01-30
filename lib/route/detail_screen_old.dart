import 'package:ardea_rifiuti/content/detail_content_old.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String titleCard;
  final int index;

  DetailScreen({Key key, @required this.index, @required this.titleCard})
      : super(key: key);

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
      body: DetailContent(index: index),
    );
  }
}
