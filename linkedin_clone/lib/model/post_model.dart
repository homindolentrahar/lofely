import 'package:meta/meta.dart';

class Post {
  final String postId;
  final String username;
  final String avatar;
  final int followers;
  final String postTime;
  final String caption;
  final String image;
  final int likesCount;
  final int commentsCount;
  final int sharesCount;

  Post({
    @required this.postId,
    @required this.username,
    @required this.avatar,
    @required this.followers,
    @required this.postTime,
    @required this.caption,
    @required this.image,
    @required this.likesCount,
    @required this.commentsCount,
    @required this.sharesCount,
  });
}
