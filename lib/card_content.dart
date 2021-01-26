import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils/utils.dart';

import 'route/detail_screen.dart';

// ignore: must_be_immutable
class CardContent extends StatelessWidget {
  static double cardHeight;
  final String titleCard;
  final String subTitleCard;
  final String typeCard;
  final String dimensionCard;
  final int colorCard;
  static Icon iconCard;

  CardContent(
      {Key key,
      @required this.titleCard,
      @required this.subTitleCard,
      @required this.typeCard,
      @required this.dimensionCard,
      @required this.colorCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    cardHeight = Utils.getHeightCard(dimensionCard);
    iconCard = Utils.getIconCard(typeCard);

    return Container(
      height: cardHeight,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
        elevation: 4,
        color: new Color(colorCard),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailScreen(index: null, titleCard: titleCard),
              ),
            );
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: iconCard,
                  /*Icon(Icons.album, size: 70),*/
                  title: Text(
                    titleCard,
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                  subtitle: Text(
                    subTitleCard,
                    style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 22.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
