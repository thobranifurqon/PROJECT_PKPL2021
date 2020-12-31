import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewScreen extends StatefulWidget {
  final String address;
  final String name;
  WebViewScreen({this.address, this.name});

  @override
  State<StatefulWidget> createState() {
    return _WebViewScreenState();
  }
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appCacheEnabled: true,
      withJavascript: true,
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[Text(widget.name)],
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6610f2), Color(0x28255d)],
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft)),
        ),
      ),
      url: widget.address,
      withZoom: true,
      withLocalStorage: true,
      initialChild: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff6610f2), Color(0x0096FF)],
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
        )),
        child: const Center(
          child: Text('Loading.....'),
        ),
      ),
    );
  }
}
