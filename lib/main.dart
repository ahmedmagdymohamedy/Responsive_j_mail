import 'package:flutter/material.dart';
import 'package:j_mail/email%20list%20screen/EmailListScreen.dart';
import 'package:j_mail/models/Responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'j_mail',
      theme: ThemeData(
        primaryColor: Color(0xff424242),
        scaffoldBackgroundColor: Color(0xffeeeeee),
        iconTheme: IconThemeData(color: Colors.grey[600]),
      ),
      home: Responsive(),
    );
  }
}
