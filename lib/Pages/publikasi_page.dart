import 'package:covid19_apps/API/api_client.dart';
import 'package:covid19_apps/Models/press_release.dart';
import 'package:covid19_apps/theme/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';

class Publikasi extends StatefulWidget {
  @override
  _PublikasiState createState() => _PublikasiState();
}

class _PublikasiState extends State<Publikasi> {
  List<PressRelease> data;
  void get getData async {
    final response = await Client()
        .get('https://corona.ntbprov.go.id/api/publikasi', headers: {
      "Content-Type": "application/json",
      'X-Requested-With': 'XMLHttpRequest',
    });
    Map<String, dynamic> responseData = ApiClient.setupResponse(response);
    if (responseData['status']) {
      responseData['data'] = (responseData['data'] as List)
          .map((tp) => PressRelease.fromMap(tp))
          .toList();
    }
    setState(() {
      data = responseData['data'];
    });
  }

  @override
  void initState() {
    super.initState();
    getData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Publikasi',
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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff6610f2), Color(0x0096FF)],
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
        )),
        child: data == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                padding: EdgeInsets.all(8),
                children: data
                    .map(
                      (e) => Card(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.judul),
                                ],
                              )),
                              IconButton(
                                  icon: Icon(Icons.file_download),
                                  color: Color.fromRGBO(58, 129, 242, 1),
                                  onPressed: () {
                                    launch(
                                        "https://corona.ntbprov.go.id/storage/${e.lokasiFile}");
                                  })
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
