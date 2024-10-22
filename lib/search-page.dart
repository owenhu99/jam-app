import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jam_app/main.dart';

void main() => runApp(SearchPage());

class SearchPage extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build (BuildContext ctxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jam App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySearchPage(title: 'Flutter Search'),
    );
  }
}

class MySearchPage extends StatefulWidget {
  MySearchPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final backIcon = IconButton(
      icon: Icon(IconData(58848, fontFamily: 'MaterialIcons', matchTextDirection: true)), // Pre-defined icon
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );},
      iconSize: 20,
    );

    final avatarIcon = IconButton(
      icon: Icon(IconData(59475, fontFamily: 'MaterialIcons')), // Pre-defined icon
      onPressed: () {},
      iconSize: 40,
    );

    final addIcon = IconButton(
      icon: Icon(IconData(57669, fontFamily: 'MaterialIcons')), // Pre-defined icon
      onPressed:() {},
    );

    final avatarHyperlink = RichText(
      text: TextSpan(
        text: 'Username',
        style: new TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline),
      )
    );

    final searchBar = TextField(
      controller: editingController,
      decoration: InputDecoration(
      labelText: "Search",
      hintText: "Search",
      prefixIcon: Icon(Icons.search),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)))),
      );

  final textBoxTemp = Container(
    padding: const EdgeInsets.all(15.0),
    alignment: Alignment.topLeft,
    child: Text('Test Form',
      style: Theme.of(context)
        .textTheme
        .display1
        .copyWith(color: Colors.white)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: const Color(0xff7c94b6),
    ),
    height: 300,
  );

      return Scaffold( // this scaffold is where all the components are written onto the screen
      body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    backIcon,
                    avatarIcon, 
                    avatarHyperlink
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new SizedBox(
                      child: searchBar,
                      height: 25,
                      width: 150,
                      ), 
                    SizedBox(width: 15.0),
                    addIcon,
                ]),
                textBoxTemp,
              ],
            ),
          ),
        ),
      )
        )
      );
  }
}