
import 'package:quizbie/sayfalar/giris.dart';
import 'package:flutter/material.dart';
import 'package:quizbie/sayfalar/kayit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
     routes: <String, WidgetBuilder>{
        "/": (context) => Giris(),
       "/kayit" : (context) => Kayit(),
     },

    );
  }
}
