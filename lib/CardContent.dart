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
        /*child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ),
            );
          },
          child: ListTile(
            */ /*leading: Icon(
              Icons.phone,
              color: Colors.teal,
            ),*/ /*
            title: Text(
              nameCard,
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Source Sans Pro',
                fontSize: 26.0,
              ),
            ),
          ),
        ),*/
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size: 70),
                title: Text('Flutter ', style: TextStyle(color: Colors.white)),
                subtitle: Text('Dev', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      /*decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: [
            Color(0xF25FFFFF),
            Color(0xFF2508FF),
            Color(0xFF2508FF),
          ], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),*/
    );
  }
}
