import 'package:flutter/material.dart';
import 'package:j_mail/email%20details%20screen/EmailDetails.dart';
import 'package:j_mail/email%20list%20screen/EmailCard.dart';
import 'package:j_mail/email%20list%20screen/EmailListScreen.dart';
import 'package:j_mail/models/constants.dart';

bool isMobile(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  if (size.width <= 650) return true;
  return false;
}

bool isTablet(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  if (size.width > 650 && size.width < 1100) return true;
  return false;
}

bool isDesktop(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  if (size.width >= 1100) return true;
  return false;
}

class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return EmailListScreens();
    } else if (isTablet(context)) {
      return Row(
        children: [
          Expanded(flex: 1, child: EmailListScreens()),
          Expanded(flex: 2, child: EmailDetailsScreen(demoData[0])),
        ],
      );
    } else if (isDesktop(context)) {
      return Row(
        children: [
          Expanded(flex: 2, child: EmailListScreens()),
          Expanded(flex: 5, child: EmailDetailsScreen(demoData[0])),
        ],
      );
    }
    return Container();
  }
}
