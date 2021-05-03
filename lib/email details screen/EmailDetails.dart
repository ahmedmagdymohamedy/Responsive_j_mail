import 'package:flutter/material.dart';
import 'package:j_mail/models/constants.dart';

import 'EmailScreenBar.dart';

class EmailDetailsScreen extends StatelessWidget {
  Massage massage;
  EmailDetailsScreen(this.massage);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            EmailScreenBar(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(massage.imgURL),
                        radius: 24,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              massage.senderName,
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            Text(
                              massage.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 14),
                      Text(
                        massage.date,
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(massage.subject,
                      style: TextStyle(
                        height: 1.5,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
