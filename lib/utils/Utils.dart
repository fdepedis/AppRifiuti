import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Config.dart';

class Utils extends StatelessWidget {
  static int colorCard;
  static double dimensionCard;
  static Icon iconCard;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  static double getHeightCard(String dimen) {
    switch (dimen) {
      case "LARGE":
        {
          dimensionCard = Config.cardHeightLarge;
          break;
        }
      case "NORMAL":
        {
          dimensionCard = Config.cardHeightNormal;
          break;
        }
      case "SMALL":
        {
          dimensionCard = Config.cardHeightSmall;
          break;
        }
      default:
        {
          dimensionCard = Config.cardHeightDefault;
          break;
        }
    }
    return dimensionCard;
  }

  static Icon getIconCard(String typeCard) {
    switch (typeCard) {
      case "R_CALENDAR":
        {
          iconCard = Icon(Icons.calendar_today_rounded,
              color: Colors.white70, size: 70);
        }
        break;

      case "R_TYPE":
        {
          iconCard = Icon(Icons.phone, color: Colors.white70, size: 70);
        }
        break;

      case "R_CHECK":
        {
          iconCard = Icon(Icons.phone, color: Colors.white70, size: 70);
        }
        break;

      default:
        {
          iconCard = Icon(Icons.album, color: Colors.red, size: 70);
        }
        break;
    }
    return iconCard;
  }
}
