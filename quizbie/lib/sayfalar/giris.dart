
import 'package:flutter/material.dart';
import 'package:quizbie/sayfalar/kayit.dart';
import 'package:quizbie/sayfalar/giris.dart/';
class GirisPage extends StatefulWidget {
  const GirisPage({Key? key}) : super(key: key);

@override
_Giris> createState() => _GirisState();
}


 /* runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}*/

class Giris extends State<Giris> {


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Giriş Yapıldı!');
      },
      child: Text(
        "Giriş Yap",
        style: TextStyle(
          fontFamily: 'TimesNewRoman',
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[400],
        onPrimary: Colors.blueGrey[900],
        fixedSize: Size(200, 50),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Center(
          child: Text(
            "QUİZBİE",
            style: TextStyle(fontSize: 25.0, color: Colors.white,
                fontWeight: FontWeight.bold, fontFamily: 'TimesNewRoman' ),
          ),
        ),
        toolbarHeight: 75,
        toolbarOpacity: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40)),
        ),
        elevation: 10,
      ),

      backgroundColor: Colors.red[100],
      body: Center(
        child: Container(
          color: Colors.red[100],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("images/sudee.png"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 4.0,
                        color: Colors.pink[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: 'TimesNewRoman',
                                ),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.blueGrey[900],
                                  ),
                                  hintText: "e-posta",
                                  hintStyle: TextStyle(
                                    color: Colors.blueGrey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              TextFormField(
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: Colors.blueGrey[900],
                                  ),
                                  hintText: "parola",
                                  hintStyle: TextStyle(
                                    fontFamily: 'TimesNewRoman',
                                    color: Colors.blueGrey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      _Giris(),
                  Center(
                    child: Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Kayit()),
                            );
                          },
                          child: Text(
                            'Üye ol',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TimesNewRoman',
                              color: Colors.blueGrey[600],
                            ),
                          ),
                        ),

          ],
            ),
            ),
        ],  ),
      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Kayit() {}
}
