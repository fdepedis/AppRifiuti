import 'package:ardea_rifiuti/utils/strings.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';

class PrenotazioneRContent extends StatelessWidget {
  PrenotazioneRContent({Key key, @required this.titleCard}) : super(key: key);

  final String titleCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          titleCard,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                left: 22.0, top: 50.0, right: 22.0, bottom: 30.0),
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Per prenotazione contattare il numero",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 32.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                    thickness: 1,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      FrinoIcons.f_phone_circle,
                      color: Colors.teal,
                    ),
                    title: Text(
                      Strings.numeroVerde,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      FrinoIcons.f_earth,
                      color: Colors.teal,
                    ),
                    title: Text(
                      Strings.linkWeb,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: AutoSizeText(
                    Strings.prenotazioneCard,
                    textAlign: TextAlign.justify,
                    maxLines: 100,
                    style: TextStyle(fontSize: 18),
                    minFontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
