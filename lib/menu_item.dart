import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String judul;
  final String image;
  final Function onTap;
  final Function styletext;
  final Function name;

  MenuItem({this.judul, this.onTap, this.styletext, this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(4),
        child: Card(
          elevation: 10,
          child: InkWell(
            onTap: onTap,
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0x9051f5), Color(0x1d28f5)],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomLeft)),
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (image != null) Image.asset(image),
                  Text(judul),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
