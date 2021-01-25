import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';

// ignore: must_be_immutable
class CardContent extends StatelessWidget {
  static const double cardHeightLarge = 250;
  static const double cardHeightNormal = 100;
  static const double cardHeightSmall = 50;
  double cardHeight;
  final String nameCard;
  final String typeCard;
  final String dimensionCard;

  CardContent(
      {Key key,
      @required this.nameCard,
      @required this.typeCard,
      @required this.dimensionCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (dimensionCard == "LARGE") {
      cardHeight = cardHeightLarge;
    } else if (dimensionCard == "NORMAL") {
      cardHeight = cardHeightNormal;
    } else {
      cardHeight = cardHeightSmall;
    }
    return Container(
      height: cardHeight,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
        elevation: 4,
        color: new Color(0xFF333366),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ),
            );
          },
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.teal,
            ),
            title: Text(
              '',
              style: TextStyle(
                color: Colors.teal.shade900,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
