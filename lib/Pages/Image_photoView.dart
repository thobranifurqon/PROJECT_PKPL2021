import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class FullScreenImageScreen extends StatefulWidget {
  final List<String> images;
  final String name;
  FullScreenImageScreen({this.images, this.name});

  @override
  _FullScreenImageScreen createState() => _FullScreenImageScreen();
}

class _FullScreenImageScreen extends State<FullScreenImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.name),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6610f2), Color(0x28255d)],
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft)),
        ),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: PhotoViewGallery.builder(
                backgroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Color(0x0096FF), Color(0x0096FF)],
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                )),
                enableRotation: true,
                scrollPhysics: const BouncingScrollPhysics(),
                loadingBuilder: (context, event) => Center(
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(
                      value: event == null
                          ? 0
                          : event.cumulativeBytesLoaded /
                              event.expectedTotalBytes,
                    ),
                  ),
                ),
                itemCount: widget.images.length,
                builder: (context, idx) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: AssetImage(widget.images[idx]),
                    heroAttributes:
                        PhotoViewHeroAttributes(tag: widget.images[idx]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
