import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';

import 'config.dart';

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
          iconCard =
              Icon(FrinoIcons.f_calendar, color: Colors.white70, size: 70);
        }
        break;

      case "R_TYPE":
        {
          iconCard =
              Icon(FrinoIcons.f_recycling, color: Colors.white70, size: 70);
        }
        break;

      case "R_CHECK":
        {
          iconCard =
              Icon(FrinoIcons.f_phone_classic, color: Colors.white70, size: 70);
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
