import 'package:meta/meta.dart';

class Chat {
  final String chatId;
  final String avatar;
  final String username;
  final String content;
  final String time;
  final bool isRead;
  final bool userOnline;

  Chat({
    @required this.chatId,
    @required this.avatar,
    @required this.username,
    @required this.content,
    @required this.time,
    @required this.isRead,
    @required this.userOnline,
  });
}
