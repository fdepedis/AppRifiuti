import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card_content.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* title: Text(widget.title),*/
        backgroundColor: Colors.teal,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }
}

enum cardDimension { LARGE, NORMAL, SMALL }

extension ParseToString on cardDimension {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

ListView _buildBody(BuildContext context) {
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CardContent(
              titleCard: "Calendario Rifiuti",
              subTitleCard:
                  "Verifica il calenderio settimanale per la corretta differenziata",
              typeCard: "R_CALENDAR",
              dimensionCard: cardDimension.LARGE.toShortString(),
              colorCard: 0xFF7C2289),
          CardContent(
              titleCard: "Rifiuti Speciali",
              subTitleCard: "Verifica e differenzia i rifiuti speciali",
              typeCard: "R_TYPE",
              dimensionCard: cardDimension.NORMAL.toShortString(),
              colorCard: 0xFFF48731),
          CardContent(
              titleCard: "Prenotazione Rifiuti",
              subTitleCard: "Prenota un ritiro per i rifiuti ingombranti",
              typeCard: "R_CHECK",
              dimensionCard: cardDimension.SMALL.toShortString(),
              colorCard: 0xFFFFB849),
          /**
           * Here, if add new card, it's possible scroll to view correctly the card created
           */
        ],
      ),
    ],
  );

  /*SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

    Card(
    elevation: 4,
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(""), fit: BoxFit.contain),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Text(
                      "",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );*/
}
