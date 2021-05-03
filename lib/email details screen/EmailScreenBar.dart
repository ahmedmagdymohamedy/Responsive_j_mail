import 'package:flutter/material.dart';
import 'package:j_mail/models/Responsive.dart';

class EmailScreenBar extends StatelessWidget {
  const EmailScreenBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        children: [
          if (isMobile(context)) SizedBox(width: 12),
          if (isMobile(context)) BackButton(),
          SizedBox(width: 12),
          Icon(Icons.delete_outline_outlined),
          SizedBox(width: 12),
          Icon(Icons.reply),
          SizedBox(width: 12),
          Icon(Icons.reply_all_outlined),
          SizedBox(width: 12),
          Icon(Icons.fast_forward_rounded),
          Spacer(),
          Icon(Icons.print_outlined),
          SizedBox(width: 12),
          Icon(Icons.flag_outlined),
          SizedBox(width: 12),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}
