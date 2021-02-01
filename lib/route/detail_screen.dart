import 'package:ardea_rifiuti/content/prenotazioneR_content.dart';
import 'package:ardea_rifiuti/content/typeR_content.dart';
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
          return ToDoContent(titleCard: titleCard);
        }
      case 2:
        {
          return TypeRContent(titleCard: titleCard);
        }
      case 3:
        {
          return PrenotazioneRContent(titleCard: titleCard);
        }
      default:
        {
          return ToDoContent();
        }
        break;
    }
  }
}
