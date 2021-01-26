import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_micard/utils/Config.dart';

import 'route/detail_screen.dart';

// ignore: must_be_immutable
class CardContent extends StatelessWidget {
  double cardHeight;
  final String nameCard;
  final String typeCard;
  final String dimensionCard;
  final int colorCard;

  CardContent(
      {Key key,
      @required this.nameCard,
      @required this.typeCard,
      @required this.dimensionCard,
      @required this.colorCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (dimensionCard == "LARGE") {
      cardHeight = Config.cardHeightLarge;
    } else if (dimensionCard == "NORMAL") {
      cardHeight = Config.cardHeightNormal;
    } else {
      cardHeight = Config.cardHeightSmall;
    }
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
                    DetailScreen(index: null, nameCard: nameCard),
              ),
            );
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 70),
                  title: Text(
                    nameCard,
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 26.0,
                    ),
                  ),
                  subtitle: Text(
                    'Dev',
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
