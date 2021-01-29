import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailContent extends StatelessWidget {
  /*static double cardHeight;
  static Icon iconCard;
  static int indexDetailScreen;
*/

  final int index;

  DetailContent({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 1) {
      return Container(
        height: 200.0,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album, size: 70),
                title: Text(
                  "titleCard",
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                subtitle: Text(
                  "subTitleCard",
                  style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (index == 2) {
      return Container(
        height: 200.0,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album, size: 70),
                title: Text(
                  "titleCard",
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                subtitle: Text(
                  "subTitleCard",
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (index == 3) {
      return Container(
        height: 200.0,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album, size: 70),
                title: Text(
                  "titleCard",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                subtitle: Text(
                  "subTitleCard",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        height: 200.0,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.album, size: 70),
                title: Text(
                  "not 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                subtitle: Text(
                  "subTitleCard",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
