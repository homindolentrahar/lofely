import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/data/local_data.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/chat_item.dart';

class ChatsFragment extends StatelessWidget {
  final List<Map<String, dynamic>> _frequentConversations = [
    {
      'avatar': "assets/images/avatar/random_3.jpg",
      'name': "Juan D.",
    },
    {
      'avatar': "assets/images/avatar/random_4.jpg",
      'name': "Mike Sullivan",
    },
    {
      'avatar': "assets/images/avatar/random_5.jpg",
      'name': "Tom Sanderson",
    },
    {
      'avatar': "assets/images/avatar/random_6.jpg",
      'name': "Katya Milanova",
    },
  ];

  Widget _buildFrequentChats() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Frequent Conversations",
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 80,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: _frequentConversations.length,
              itemBuilder: (ctx, index) =>
                  _buildFrequentChatsPerson(_frequentConversations[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrequentChatsPerson(Map<String, dynamic> item) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              item['avatar'],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            item['name'],
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChats() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 8),
          physics: BouncingScrollPhysics(),
          itemCount: chats.length,
          itemBuilder: (ctx, index) => ChatItem(
            chat: chats[index],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildFrequentChats(),
        SizedBox(
          height: 4,
        ),
        _buildChats(),
      ],
    );
  }
}
