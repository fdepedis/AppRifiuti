import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:developer' as dev;

class DetailContent extends StatelessWidget {
  final int index;

  DetailContent({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 1:
        {
          dev.log('data: $index');
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
        }
        break;
      case 2:
        {
          dev.log('data: $index');
          return SafeArea(
            child: Container(
              child: Row(
                children: [
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child: Image(
                                  image:
                                      AssetImage('images/AbitiDismessiR.png')),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child: Image(
                                  image: AssetImage('images/IngombrantiR.png')),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child: Image(
                                  image:
                                      AssetImage('images/OliiVegetaliR.png')),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child:
                                  Image(image: AssetImage('images/RaeeR.png')),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child:
                                  Image(image: AssetImage('images/RupR.png')),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child:
                                  Image(image: AssetImage('images/TonerR.png')),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 83.0,
                              width: 83.0,
                              child:
                                  Image(image: AssetImage('images/VetroR.png')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        /*child: Text(
                              'Gli indumenti dismessi possono essere conferiti, tutti i giorni negli appositi contenitori di colore giallo dislocati sul territorio cittadino. Non depositare indumenti o buste nei pressi dei contenitori. ',
                              style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),*/
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        break;
      case 3:
        {
          dev.log('data: $index');
        }
        break;
      default:
        {
          dev.log('data default');
        }
        break;
    }
  }
}
