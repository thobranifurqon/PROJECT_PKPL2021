import 'package:covid19_apps/API/api_client.dart';
import 'package:covid19_apps/Models/faq.dart';
import 'package:covid19_apps/theme/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class FaqPages extends StatefulWidget {
  @override
  _FaqPagesState createState() => _FaqPagesState();
}

class _FaqPagesState extends State<FaqPages> {
  List<Faq> data;
  void getData() async {
    final response =
        await Client().get('https://corona.ntbprov.go.id/api/faq', headers: {
      "Content-Type": "application/json",
      'X-Requested-With': 'XMLHttpRequest',
    });
    Map<String, dynamic> responseData = ApiClient.setupResponse(response);
    if (responseData['status']) {
      responseData['data'] =
          (responseData['data'] as List).map((tp) => Faq.fromMap(tp)).toList();
    }
    setState(() {
      data = responseData['data'];
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQS', style: myTextStyle),
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
                padding: EdgeInsets.all(10),
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
                                children: [Text(e.question), Text(e.answer)],
                              )),
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
