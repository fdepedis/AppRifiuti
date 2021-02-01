import 'package:ardea_rifiuti/content/radial_expansion_content.dart';
import 'package:ardea_rifiuti/content/to_do_content.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String titleCard;
  final int index;

  DetailScreen({Key key, @required this.index, @required this.titleCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 1:
        {
          return ToDoScreen(titleCard: titleCard);
        }
      case 2:
        {
          return RadialExpansionContent(titleCard: titleCard);
        }
      case 3:
        {
          return ToDoScreen(titleCard: titleCard);
        }
      default:
        {
          return ToDoScreen();
        }
        break;
    }
  }
}
