import 'package:flutter/material.dart';
import 'package:j_mail/email%20details%20screen/EmailDetails.dart';
import 'package:j_mail/models/Responsive.dart';
import 'package:j_mail/models/constants.dart';

class EmailCard extends StatelessWidget {
  Massage massage;
  int index;
  EmailCard(this.massage, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (ctx) => EmailDetailsScreen(massage)));
        },
        child: Container(
          padding: EdgeInsets.all(14),
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
              color: index == 0 && !isMobile(context)
                  ? Color(0xff5794ff)
                  : Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 6,
                )
              ]),
          child: Column(
            children: [
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
                          style: TextStyle(
                              fontWeight: massage.isRead
                                  ? FontWeight.w300
                                  : FontWeight.bold),
                        ),
                        Text(
                          massage.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: massage.isRead
                                  ? FontWeight.w300
                                  : FontWeight.bold),
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
              SizedBox(height: 8),
              Expanded(
                child: Text(
                  massage.subject,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
