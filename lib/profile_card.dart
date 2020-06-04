import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final int cardNum;
  ProfileCard(this.cardNum);

  List<String> name = ['Nicole', 'Shannon', 'Denise', 'Emma', 'Cheryl', 'Lynette'];
  List<String> image = ['assets/girl_a.jpg', 'assets/girl_b.jpg', 'assets/girl_c.png', 'assets/girl_d.jpg', 'assets/girl_e.jpg', 'assets/girl_f.png'];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Center(child: Image.asset('${image[cardNum%6]}', fit: BoxFit.cover))
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('${name[cardNum%6]}',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700)),
                  Padding(padding: EdgeInsets.only(bottom: 8.0)),
                  Text('A short description.', textAlign: TextAlign.start),
                ],
              ))
        ],
      ),
    );
  }
}
