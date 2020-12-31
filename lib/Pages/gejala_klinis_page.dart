import 'package:flutter/material.dart';
import 'package:covid19_apps/theme/my_styles.dart';
import 'package:photo_view/photo_view.dart';

class GejalaKlinis extends StatelessWidget {
  final String judul;
  final String image;
  final Function onTap;

  GejalaKlinis({this.judul, this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Gejala Klinis",
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
        body: PhotoView(
          backgroundDecoration: BoxDecoration(color: Colors.white),
          imageProvider: AssetImage("images/gejala-klinis.png"),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 0.2,
          enableRotation: true,
        ));
  }
}
