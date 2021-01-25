import 'package:flutter/material.dart';
import 'CardContent.dart';
import 'detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Rifiuti Marina TSL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Marina Tor S.Lorenzo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildBody(context),
    );
  }
}

SafeArea _buildBody(BuildContext context) {
  return SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        /*SizedBox(
          height: 20.0,
          width: 150.0,
          child: Divider(
            color: Colors.teal.shade100,
            thickness: 1,
          ),
        ),*/
        /*calendarCard(context),*/
        CardContent(nameCard: "", typeCard: "", dimensionCard: "LARGE"),
        /*Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          elevation: 4,
          //color: Colors.white,
          //padding: EdgeInsets.all(10.0),
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
        ),*/
        /*Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
            //color: Colors.white,
            //padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
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
        ),*/
        CardContent(nameCard: "", typeCard: "", dimensionCard: "LARGE"),
        CardContent(nameCard: "", typeCard: "", dimensionCard: "NORMAL"),
      ],
    ),
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
