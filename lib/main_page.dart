import 'package:covid19_apps/Pages/Image_photoView.dart';
import 'package:covid19_apps/Pages/faq_page.dart';
import 'package:covid19_apps/Pages/press_release_page.dart';
import 'package:covid19_apps/Pages/rs_rujukan_page.dart';
import 'package:covid19_apps/Pages/webview_page.dart';
import 'package:covid19_apps/menu_item.dart';
import 'package:covid19_apps/theme/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:covid19_apps/Pages/publikasi_page.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Image.asset(
                "images/logogermas.png",
                height: 50,
              )
            ],
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
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff6610f2), Color(0x0096FF)],
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
        )),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Pemerintah Serius,Siap dan Mampu Menangani COVID-19",
                        style: myThirdstyle,
                      ),
                      Text(
                        "Masyarakat Tetap Tenang & Waspada",
                        style: myThirdstyle,
                      ),
                      Text(
                        "#COVID BISA SEMBUH",
                        style: mysecondstyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: LottieBuilder.asset("images/corona.json"),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuItem(
                    image: 'images/data.png',
                    judul: "Data Covid-19 NTB",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => WebViewScreen(
                                  name: 'Data Covid-19 NTB',
                                  address:
                                      'https://corona.ntbprov.go.id/list-data',
                                ))),
                  ),
                  MenuItem(
                    image: 'images/map.png',
                    judul: "Peta Persebaran",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => WebViewScreen(
                                  name: 'Peta Persebaran',
                                  address: 'https://corona.ntbprov.go.id/peta',
                                ))),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  MenuItem(
                    image: 'images/news.png',
                    judul: "Press Release",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => PressReleasePage())),
                  ),
                  MenuItem(
                    image: 'images/publikasi.png',
                    judul: "Publikasi ",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => Publikasi())),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuItem(
                    image: 'images/medical.png',
                    judul: "Self Check Up",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => WebViewScreen(
                                  name: 'Self Check Up',
                                  address:
                                      'https://rsud.ntbprov.go.id/checkup/covid.php',
                                ))),
                  ),
                  MenuItem(
                    image: 'images/faqs.png',
                    judul: "Faqs",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => FaqPages())),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuItem(
                    image: 'images/gpsgemilang.png',
                    judul: "GPS Gemilang",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => WebViewScreen(
                                name: 'GPS Gemilang',
                                address:
                                    'https://corona.ntbprov.go.id/pilih-jps-gemilang'))),
                  ),
                  MenuItem(
                    image: 'images/hospital.png',
                    judul: "Rumah Sakit Rujukan ",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => RsRujukanPage())),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuItem(
                    image: 'images/laboratory.png',
                    judul: "Laboratorium Uji",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => WebViewScreen(
                                  name: 'Laboratoriam Uji',
                                  address:
                                      'https://corona.ntbprov.go.id/data-laboratorium',
                                ))),
                  ),
                  MenuItem(
                    image: 'images/satuan.png',
                    judul: "Satuan Tugas ",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) =>
                                FullScreenImageScreen(
                                  images: ['images/contact.png'],
                                  name: 'Satuan Tugas',
                                ))),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuItem(
                    image: 'images/heartbeat.png',
                    judul: "Gejala Klinis",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) =>
                                FullScreenImageScreen(
                                  images: ['images/gejala-klinis.png'],
                                  name: 'Gejala Klinis',
                                ))),
                  ),
                  MenuItem(
                    image: 'images/germas.png',
                    judul: "Germas",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) =>
                                FullScreenImageScreen(
                                  images: ['images/macam-germas.png'],
                                  name: 'Germas',
                                ))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
