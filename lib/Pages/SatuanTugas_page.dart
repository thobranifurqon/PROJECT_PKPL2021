import 'package:flutter/material.dart';
import 'package:covid19_apps/theme/my_styles.dart';

class SatuanTugas extends StatelessWidget {
  final String judul;
  final String image;
  final Function onTap;

  SatuanTugas({this.judul, this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Satuan Tugas",
          style: myTextStyle,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6610f2), Color(0xff0096ff)],
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft)),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              width: 700,
              height: 700,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff6610f2), Color(0xff0096ff)],
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topCenter),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                    )
                  ]),
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage("images/contact.png"),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
