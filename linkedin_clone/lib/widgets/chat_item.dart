import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/model/chat_model.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class ChatItem extends StatelessWidget {
  final Chat chat;

  ChatItem({@required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(chat.avatar),
          ),
          chat.userOnline
              ? Positioned(
                  bottom: 0,
                  right: 4,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: ColorPalette.green,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
      title: Text(
        chat.username,
        style: GoogleFonts.sourceSansPro(
          color: ColorPalette.dark,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        chat.content,
        style: GoogleFonts.sourceSansPro(
          color: chat.isRead ? ColorPalette.grey : ColorPalette.dark,
          fontSize: 12,
          fontWeight: chat.isRead ? FontWeight.w400 : FontWeight.w600,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            chat.time,
            style: GoogleFonts.sourceSansPro(
              color: chat.isRead ? ColorPalette.grey : ColorPalette.dark,
              fontSize: 10,
              fontWeight: chat.isRead ? FontWeight.w400 : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
