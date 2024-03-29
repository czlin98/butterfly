import 'package:flutter/material.dart';
import 'cards_section.dart';

class SwipeFeedPage extends StatefulWidget {
  @override
  _SwipeFeedPageState createState() => _SwipeFeedPageState();
}

class _SwipeFeedPageState extends State<SwipeFeedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.cyan[200],
        title: Text('Butterfly', style: TextStyle(
          fontSize: 24.0,
          letterSpacing: 2.0
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            }, icon: Icon(Icons.person, color: Colors.white, size: 32.0)),
        //title: Switch(
        //  onChanged: (bool value) => setState(() => showAlignmentCards = value),
        //  value: showAlignmentCards,
        //  activeColor: Colors.red,
        //),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: Icon(Icons.settings, color: Colors.white, size: 28.0)),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          CardsSection(context),
          buttonsRow()
        ],
      ),
    );
  }

  Widget buttonsRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        /*children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(Icons.close, color: Colors.red),
          ),
          Padding(padding: EdgeInsets.only(right: 8.0)),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(Icons.favorite, color: Colors.green),
          ),
        ],*/
      ),
    );
  }
}
