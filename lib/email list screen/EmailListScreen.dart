import 'package:flutter/material.dart';
import 'package:j_mail/models/constants.dart';

import 'EmailCard.dart';
import 'SearchBar.dart';

class EmailListScreens extends StatefulWidget {
  @override
  EmailListScreensState createState() => EmailListScreensState();
}

class EmailListScreensState extends State<EmailListScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
              itemCount: demoData.length,
              itemBuilder: (ctx, i) => EmailCard(demoData[i], i),
            )),
          ],
        ),
      ),
    );
  }
}
